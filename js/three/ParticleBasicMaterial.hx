package js.three;

@:native("THREE.ParticleBasicMaterial")
extern class ParticleBasicMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var map : Texture;
    public var size : Float; // 1
    public var sizeAttenuation : Bool; // true
    public var vertexColors : Bool; // NoColors
    public var fog : Bool; // true
    public function new(?parameters:Dynamic) : Void;
}
