package js.three;

@:native("THREE.ParticleCanvasMaterial")
extern class ParticleCanvasMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var program : Dynamic->Color->Void;
    public function new(?parameters:Dynamic) : Void;
}
