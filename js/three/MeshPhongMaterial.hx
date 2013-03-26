package js.three;

@:native("THREE.MeshPhongMaterial")
extern class MeshPhongMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var ambient : Color; // new Color(parameters.ambient) | new Color(0x050505)
    public var specular : Color;  // new Color(parameters.specular) | new Color(0x111111)
    public var shininess : Float; // 30
    public var metal : Bool; // false
    public var perPixel : Bool; // false
    public var wrapAround : Bool; // false
    public var wrapRGB : Vector3; // (1,1,1)
    public var map : Texture;
    public var lightMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // Operation.Multiply
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    public function new(?parameters:Dynamic) : Void;
}
