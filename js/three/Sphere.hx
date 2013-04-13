package js.three;

@:native("THREE.Sphere")
extern class Sphere {
    public var center : Vector3; // (0,0,0)
    public var radius: Float; // 0
    public function new(?center:Vector3, ?radius:Float) : Void;
    public function set(center:Vector3, radius:Float) : Sphere; // this
    public function setFromCenterAndPoints(center:Vector3, points:Array<Vector3>) : Sphere; // this
    public function copy(sphere:Sphere) : Sphere; // this
    public function empty() : Bool;
    public function containsPoint(point:Vector3) : Bool;
    public function distanceToPoint(point:Vector3) : Float;
    public function intersectsSphere(sphere:Sphere) : Bool;
    public function clampPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function getBoundingbox(?optionalTarget:Box3) : Box3;
    public function applyMatrix4(matrix:Matrix4) : Sphere; // this
    public function translate(offset:Vector3) : Sphere; // this
    public function equals(sphere:Sphere) : Bool;
    public function clone() : Sphere;
}
