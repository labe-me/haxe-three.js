package js.three;

@:native("THREE.ParticleBasicMaterial")
extern class ParticleBasicMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var map : Texture; // parameters.map
    public var size : Float; // parameters.size | 1
    public var sizeAttenuation : Bool; // parameters.sizeAttenuation | true
    public var vertexColors : Bool; // parameters.vertexColors | false
    public var fog : Bool; // parameters.fog | true
    public function new(?parameters:Dynamic) : Void;
}
