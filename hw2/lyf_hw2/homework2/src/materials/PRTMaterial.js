class PRTMaterial extends Material {

    constructor(colorMat3, vertexShader, fragmentShader) {
        console.log(colorMat3);
        super({
            'uColorR': { type: 'matrix3fv', value: colorMat3[0]},
            'uColorG': { type: 'matrix3fv', value: colorMat3[1]},
            'uColorB': { type: 'matrix3fv', value: colorMat3[2]},
        }, ['aPrecomputeLT'], vertexShader, fragmentShader, null);
    }
}

async function buildPRTMaterial(precomputeL, vertexPath, fragmentPath) {
    let vertexShader = await getShaderString(vertexPath);
    let fragmentShader = await getShaderString(fragmentPath);
    let colorMat3 = getMat3ValueFromRGB(precomputeL)
    return new PRTMaterial(colorMat3, vertexShader, fragmentShader);
}