package js.three;

typedef RayIntersect = {
    var distance : Float;
    var point : Vector3;
    var face : Face;
    var object : Object3D;
};

@:native("THREE.Ray")
extern class Ray {
    public var origin : Vector3;
    public var direction : Vector3;
    public function new(?origin:Vector3, ?direction:Vector3) : Void;
    public function intersectScene(scene:Scene) : Array<RayIntersect>;
    public function intersectObjects(objects:Array<Object3D>) : Array<RayIntersect>;
    public function intersectObject(object:Object3D) : Array<RayIntersect>;
}
