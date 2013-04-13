package js.three;

@:native("THREE.Frustum")
extern class Frustum {
    public var planes : Array<Plane>;
    public function new(?p0:Plane, ?p1:Plane, ?p2:Plane, ?p3:Plane, ?p4:Plane, ?p5:Plane) : Void;
    public function set(p0:Plane, p1:Plane, p2:Plane, p3:Plane, p4:Plane, p5:Plane) : Frustum; // this
    public function copy(frustum:Frustum) : Frustum; // this
    public function setFromMatrix(m:Matrix4) : Frustum; // this
    public function intersectsObject(object:Object3D) : Bool;
    public function intersectsSphere(sphere:Sphere) : Bool;
    public function containsPoint(point:Vector3) : Bool;
    public function clone() : Frustum;
}
