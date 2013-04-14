package js.three;

@:native("THREE.MeshBasicMaterial")
extern class MeshBasicMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var map : Texture;
    public var lightMap : Texture;
    public var specularMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // MultiplyOperation
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // SmoothShading
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Int; // NoColors
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false

    public function new(?parameters:Dynamic) : Void;
}
