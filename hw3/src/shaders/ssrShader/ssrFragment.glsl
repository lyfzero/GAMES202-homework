#ifdef GL_ES
precision highp float;
#endif

uniform vec3 uLightDir;
uniform vec3 uCameraPos;
uniform vec3 uLightRadiance;
uniform sampler2D uGDiffuse;
uniform sampler2D uGDepth;
uniform sampler2D uGNormalWorld;
uniform sampler2D uGShadow;
uniform sampler2D uGPosWorld;

varying mat4 vWorldToScreen;
varying highp vec4 vPosWorld;

#define M_PI 3.1415926535897932384626433832795
#define TWO_PI 6.283185307
#define INV_PI 0.31830988618
#define INV_TWO_PI 0.15915494309

float Rand1(inout float p) {
  p = fract(p * .1031);
  p *= p + 33.33;
  p *= p + p;
  return fract(p);
}

vec2 Rand2(inout float p) {
  return vec2(Rand1(p), Rand1(p));
}

float InitRand(vec2 uv) {
	vec3 p3  = fract(vec3(uv.xyx) * .1031);
  p3 += dot(p3, p3.yzx + 33.33);
  return fract((p3.x + p3.y) * p3.z);
}

vec3 SampleHemisphereUniform(inout float s, out float pdf) {
  vec2 uv = Rand2(s);
  float z = uv.x;
  float phi = uv.y * TWO_PI;
  float sinTheta = sqrt(1.0 - z*z);
  vec3 dir = vec3(sinTheta * cos(phi), sinTheta * sin(phi), z);
  pdf = INV_TWO_PI;
  return dir;
}

vec3 SampleHemisphereCos(inout float s, out float pdf) {
  vec2 uv = Rand2(s);
  float z = sqrt(1.0 - uv.x);
  float phi = uv.y * TWO_PI;
  float sinTheta = sqrt(uv.x);
  vec3 dir = vec3(sinTheta * cos(phi), sinTheta * sin(phi), z);
  pdf = z * INV_PI;
  return dir;
}

void LocalBasis(vec3 n, out vec3 b1, out vec3 b2) {
  float sign_ = sign(n.z);
  if (n.z == 0.0) {
    sign_ = 1.0;
  }
  float a = -1.0 / (sign_ + n.z);
  float b = n.x * n.y * a;
  b1 = vec3(1.0 + sign_ * n.x * n.x * a, sign_ * b, -sign_ * n.x);
  b2 = vec3(b, sign_ + n.y * n.y * a, -n.y);
}

vec4 Project(vec4 a) {
  return a / a.w;
}

float GetDepth(vec3 posWorld) {
  float depth = (vWorldToScreen * vec4(posWorld, 1.0)).w;
  return depth;
}

/*
 * Transform point from world space to screen space([0, 1] x [0, 1])
 *
 */
vec2 GetScreenCoordinate(vec3 posWorld) {
  vec2 uv = Project(vWorldToScreen * vec4(posWorld, 1.0)).xy * 0.5 + 0.5;
  return uv;
}

float GetGBufferDepth(vec2 uv) {
  float depth = texture2D(uGDepth, uv).x;
  if (depth < 1e-2) {
    depth = 1000.0;
  }
  return depth;
}

vec3 GetGBufferNormalWorld(vec2 uv) {
  vec3 normal = texture2D(uGNormalWorld, uv).xyz;
  return normal;
}

vec3 GetGBufferPosWorld(vec2 uv) {
  vec3 posWorld = texture2D(uGPosWorld, uv).xyz;
  return posWorld;
}

float GetGBufferuShadow(vec2 uv) {
  float visibility = texture2D(uGShadow, uv).x;
  return visibility;
}

vec3 GetGBufferDiffuse(vec2 uv) {
  vec3 diffuse = texture2D(uGDiffuse, uv).xyz;
  diffuse = pow(diffuse, vec3(2.2));
  return diffuse;
}

/*
 * Evaluate diffuse bsdf value.
 *
 * wi, wo are all in world space.入射方向和出射方向，起点为着色点
 * uv is in screen space, [0, 1] x [0, 1].
 * 
 * return BSDF value * cos
 */
vec3 EvalDiffuse(vec3 wi, vec2 uv) {
  float cos = max(dot(wi, normalize(GetGBufferNormalWorld(uv))), 0.0);
  vec3 L = cos * GetGBufferDiffuse(uv) / M_PI;
  return L;
}

/*
 * Evaluate directional light with shadow map
 * uv is in screen space, [0, 1] x [0, 1].
 *
 * 返回着色点位于uv处得到的光源的辐射度，需要考虑遮挡关系（shadowmap）
 */
vec3 EvalDirectionalLight(vec2 uv) {
  // 使用 GetGBufferuShadow(uv) 得到可见性信息
  vec3 Le = GetGBufferuShadow(uv) * uLightRadiance;
  return Le;
}

bool RayMarch(vec3 ori, vec3 dir, out vec3 hitPos) {
  vec3 curPos = ori;
  for(float step = 0.0; step < 5.0; step += 0.05) {
    curPos = ori + dir * step;
    vec2 curUV = GetScreenCoordinate(curPos);
    float Gdepth = GetGBufferDepth(curUV);
    float depth = GetDepth(curPos);
    if((depth - Gdepth) > 1e-6) {
      hitPos = curPos;
      return true;
    }
  }
  return false;
}

#define SAMPLE_NUM 1

// TODO：1.实现直接光照的效果 2.实现间接光照，用SSR找到的交点计算第二次反射的辐射度
void main() {
  float s = InitRand(gl_FragCoord.xy);  // 初始化随机数，得到随机数的状态s

  vec3 L = vec3(0.0);
  vec2 uv = GetScreenCoordinate(vPosWorld.xyz);

  L = EvalDiffuse(uLightDir, uv) * EvalDirectionalLight(uv);
  
  vec3 L_indirect = vec3(0.0);
  vec3 hitPos;
  vec3 normal = normalize(GetGBufferNormalWorld(uv));
  vec3 b1, b2;
  LocalBasis(normal, b1, b2);
  mat3 transMat = mat3(b1, b2, normal); // 转换dir到世界坐标系

  for(int i = 0; i < SAMPLE_NUM; i++) {
    float pdf = 0.0;
    Rand1(s);
    vec3 sampleDir = SampleHemisphereUniform(s, pdf);
    sampleDir = normalize(transMat * sampleDir);

    if(RayMarch(vPosWorld.xyz, sampleDir, hitPos)) {
      vec2 hitUV = GetScreenCoordinate(hitPos);
      L_indirect += (EvalDiffuse(uLightDir, hitUV) * EvalDirectionalLight(hitUV) * EvalDiffuse(sampleDir, uv)) / pdf;
    }
  }
  L_indirect /= float(SAMPLE_NUM);
  L += L_indirect;
  vec3 color = pow(clamp(L, vec3(0.0), vec3(1.0)), vec3(1.0 / 2.2));
  gl_FragColor = vec4(vec3(color.rgb), 1.0);
}
