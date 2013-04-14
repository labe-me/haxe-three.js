package js.three;

@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var fragmentShader : String;
    public var vertexShader : String;
    public var uniforms : Dynamic;
    public var defines : Dynamic;
    public var attributes : Dynamic;
    public var shading : Int; // SmoothShading
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var fog : Bool; // false
    public var lights : Bool; // false
    public var vertexColors : Bool; // NoColors
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    public var morphNormals : Bool; // false
    public function new(?parameters:Dynamic) : Void;
}
