package js.three;

@:native("THREE.MeshPhongMaterial")
extern class MeshPhongMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var ambient : Color; // new Color(0xffffff)
    public var emissive : Color; // new Color(0x000000)
    public var specular : Color;  // new Color(0x111111)
    public var shininess : Float; // 30
    public var metal : Bool; // false
    public var perPixel : Bool; // true
    public var wrapAround : Bool; // false
    public var wrapRGB : Vector3; // (1,1,1)
    public var map : Texture;
    public var lightMap : Texture;
    public var bumpMap : Texture;
    public var bumpScale : Float;
    public var normalMap : Texture;
    public var normalScale : Vector2;
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
    public var vertexColors : Bool; // NoColors
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    public var morphNormals : Bool; // false
    public function new(?parameters:Dynamic) : Void;
}
