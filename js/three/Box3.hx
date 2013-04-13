package js.three;

@:native("THREE.Box3")
extern class Box3 {
    public var min : Vector3; // (Infinity, Infinity, Infinity)
    public var max : Vector3; // (-Infinity, -Infinity, -Infinity)
    public function new(?min:Vector3, ?max:Vector3) : Void;
    public function set(min:Vector3, max:Vector3) : Box3; // this
    public function setFromPoints(points:Array<Vector3>) : Box3; // this
    public function setFromCenterAndSize(center:Vector3, size:Vector3) : Box3; // this
    public function copy(box:Box3) : Box3; // this
    public function makeEmpty() : Box3; // this
    public function empty() : Bool;
    public function center(?optionalTarget:Vector3) : Vector3;
    public function size(?optionalTarget:Vector3) : Vector3;
    public function expandByPoint(point:Vector3) : Box3; // this
    public function expandByVector(point:Vector3) : Box3; // this
    public function expandByScalar(scalar:Float) : Box3; // this
    public function containsPoint(point:Vector3) : Bool;
    public function containsBox(box:Box3) : Bool;
    public function getParameter(point:Vector3) : Vector3;
    public function isIntersectionBox(box:Box3) : Bool;
    public function clampPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function distanceToPoint(point:Vector3) : Float;
    public function getBoundingSphere(?optionalTarget:Sphere) : Sphere;
    public function intersect(box:Box3) : Box3; // this
    public function union(box:Box3) : Box3; // this
    public function applyMatrix4(matrix:Matrix4) : Box3; // this
    public function translate(offset:Vector3) : Box3; // this
    public function equals(box:Box3) : Bool;
    public function clone() : Box3;
}
