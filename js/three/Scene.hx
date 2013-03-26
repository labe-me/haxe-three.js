package js.three;

@:native("THREE.Scene")
extern class Scene extends Object3D {
    public var fog : Fog;
    public var overrideMaterial : Material; // TODO: ensure type and usefulness
    public var objects : Array<Object3D>;
    public var lights : Array<Light>;
    public function new() : Void;
    public function addObject(o:Object3D) : Void;
    public function removeObject(o:Object3D) : Void;
}
