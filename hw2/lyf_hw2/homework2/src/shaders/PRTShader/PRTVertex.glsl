attribute vec3 aVertexPosition;
attribute mat3 aPrecomputeLT;

uniform mat4 uModelMatrix;
uniform mat4 uViewMatrix;
uniform mat4 uProjectionMatrix;

uniform mat3 uColorR;
uniform mat3 uColorG;
uniform mat3 uColorB;

varying highp vec3 vFragColor;

void main(void) {
  gl_Position = uProjectionMatrix * uViewMatrix * uModelMatrix *
                vec4(aVertexPosition, 1.0);
  vFragColor = vec3(
      dot(aPrecomputeLT[0], uColorR[0]) + dot(aPrecomputeLT[1], uColorR[1]) + dot(aPrecomputeLT[2], uColorR[2]),
      dot(aPrecomputeLT[0], uColorG[0]) + dot(aPrecomputeLT[1], uColorG[1]) + dot(aPrecomputeLT[2], uColorG[2]),
      dot(aPrecomputeLT[0], uColorB[0]) + dot(aPrecomputeLT[1], uColorB[1]) + dot(aPrecomputeLT[2], uColorB[2]))/3.14;
}