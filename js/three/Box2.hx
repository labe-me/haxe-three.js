package js.three;

@:native("THREE.Box2")
extern class Box2 {
    public var min : Vector3; // (Infinity, Infinity)
    public var max : Vector3; // (-Infinity, -Infinity)
    public function new(?min:Vector2, ?max:Vector2) : Void;
    public function set(min:Vector2, max:Vector2) : Box2; // this
    public function setFromPoints(points:Array<Vector2>) : Box2; // this
    public function setFromCenterAndSize(center:Vector2, size:Vector2) : Box2; // this
    public function copy(box:Box2) : Box2; // this
    public function makeEmpty() : Box2; // this
    public function empty() : Bool;
    public function center(?optionalTarget:Vector2) : Vector2;
    public function size(?optionalTarget:Vector2) : Vector2;
    public function expandByPoint(point:Vector2) : Box2; // this
    public function expandByVector(point:Vector2) : Box2; // this
    public function expandByScalar(scalar:Float) : Box2; // this
    public function containsPoint(point:Vector2) : Bool;
    public function containsBox(box:Box2) : Bool;
    public function getParameter(point:Vector2) : Vector2;
    public function isIntersectionBox(box:Box2) : Bool;
    public function clampPoint(point:Vector2, ?optionalTarget:Vector2) : Vector2;
    public function distanceToPoint(point:Vector2) : Float;
    public function intersect(box:Box2) : Box2; // this
    public function union(box:Box2) : Box2; // this
    public function translate(offset:Vector2) : Box2; // this
    public function equals(box:Box2) : Bool;
    public function clone() : Box2;
}
