package js.three;

@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var fragmentShader : String;
    public var vertexShader : String;
    public var uniforms : Dynamic;
    public var attributes : Dynamic;
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var fog : Bool; // false
    public var lights : Bool; // false
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    /**
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  fragmentShader: <string>,
     *  vertexShader: <string>,
     *
     *  uniforms: { "parameter1": { type: "f", value: 1.0 }, "parameter2": { type: "i" value2: 2 } },
     *
     *  shading: THREE.SmoothShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>,
     *
     *  lights: <bool>,
     *  vertexColors: <bool>,
     *  skinning: <bool>,
     *  morphTargets: <bool>,
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
