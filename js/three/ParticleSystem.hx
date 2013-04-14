package js.three;

@:native("THREE.ParticleSystem")
extern class ParticleSystem extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public var sortParticles : Bool; // false
    // public var frustumCulled : Bool; // false
    public function new(geometry:Geometry, ?material:Material) : Void;
    // override public function clone(?object:ParticleSystem) : ParticleSystem;
}
