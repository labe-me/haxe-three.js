package js.three;

@:native("THREE.Scene")
extern class Scene extends Object3D {
    public var fog : Fog; // TODO: Can this be FogExp2?
    public var overrideMaterial : Material; // TODO: ensure type and usefulness
    public function new() : Void;
}
