package js.three;

// requires WebGLRenderer
@:native("THREE.ShaderUtils")
extern class ShaderUtils {
    public static var lib : {
        /* -------------------------------------------------------------------------
        //  Fresnel shader
        //  - based on Nvidia Cg tutorial
        ------------------------------------------------------------------------- */
        var fresnel: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
        /* -------------------------------------------------------------------------
        //  Normal map shader
        //      - Blinn-Phong
        //      - normal + diffuse + specular + AO + displacement + reflection + shadow maps
        //      - point and directional lights (use with "lights: true" material option)
         ------------------------------------------------------------------------- */
        var normal: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
        /* -------------------------------------------------------------------------
        //  Cube map shader
        ------------------------------------------------------------------------- */
        var cube: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
    };
}
