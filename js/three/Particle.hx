package js.three;

@:native("THREE.Particle")
extern class Particle extends Object3D {
    public var material : Material;
    public function new(material:Material) : Void;
    // override public function clone(?object:Particle) : Particle;
}
