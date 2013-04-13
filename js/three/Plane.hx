package js.three;

@:native("THREE.Plane")
extern class Plane {
    public var normal : Vector3;
    public var constant : Float;
    public function new(?normal:Vector3, ?constant:Float) : Void;
    public function set(normal:Vector3, constant:Float) : Plane; // this
    public function setComponents(x:Float, y:Float, z:Float, w:Float) : Plane; // this
    public function setFromNormalAndCoplanarPoint(normal:Vector3, point:Vector3) : Plane; // this
    public function setFromCoplanarPoints(a:Vector3, b:Vector3, c:Vector3) : Void;
    public function copy(plane:Plane) : Plane; // this
    public function normalize() : Plane; // this
    public function negate() : Plane; // this
    public function distanceToPoint(point:Vector3) : Float;
    public function distanceToSphere(sphere:Sphere) : Float;
    public function projectPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function orthoPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function isIntersectionLine(line:Line3) : Bool;
    public function intersectLine(line:Line3, ?optionalTarget:Vector3) : Dynamic; // Vector3 or undefined
    public function coplanarPoint(?optionalTarget:Vector3) : Vector3;
    public function applyMatrix4(matrix:Matrix4, ?optionalNormalMatrix:Matrix3) : Plane; // this
    public function translate(offset:Vector3) : Plane; // this
    public function equals(plane:Plane) : Bool;
    public function clone() : Void;
}
