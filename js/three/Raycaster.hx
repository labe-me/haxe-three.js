package js.three;

typedef RayIntersect = {
    var distance : Float;
    var point : Vector3;
    var face : Face;
    var object : Object3D;
};

@:native("THREE.Raycaster")
extern class Raycaster {
    public var ray : Ray;
    public var near : Float;
    public var far : Float;
    public var precision : Float; // 0.0001
    public function new(origin:Vector3, direction:Vector3, ?near:Float, ?far:Float) : Void;
    public function set(origin:Vector3, direction:Vector3) : Void;
    public function intersectObject(object:Object3D, ?recursive:Bool=false) : Array<RayIntersect>;
    public function intersectObjects(objects:Array<Object3D>, ?recursive:Bool=false) : Array<RayIntersect>;
}
