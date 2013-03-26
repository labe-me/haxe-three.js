package js.three;

@:native("THREE.Vector3")
extern class Vector3 {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public function new(?x:Float, ?y:Float, ?z:Float) : Void;
    public function set(x:Float, y:Float, z:Float) : Vector3;
    public function setX(x:Float) : Vector3;
    public function setY(y:Float) : Vector3;
    public function setZ(z:Float) : Vector3;
    public function copy(v:Vector3) : Vector3;
    public function clone() : Vector3;
    public function add(v1:Vector3, v2:Vector3) : Vector3;
    public function addSelf(v:Vector3) : Vector3;
    public function addScalar(s:Float) : Vector3;
    public function sub(v1:Vector3, v2:Vector3) : Vector3;
    public function subSelf(v:Vector3) : Vector3;
    public function multiply(a:Vector3, b:Vector3) : Vector3;
    public function multiplySelf(v:Vector3) : Vector3;
    public function multiplyScalar(s:Float) : Vector3;
    public function divideSelf(v:Vector3) : Vector3;
    public function divideScalar(s:Float) : Vector3;
    public function negate() : Vector3;
    public function dot(v:Vector3) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function lengthManhattan() : Float;
    public function normalize() : Vector3;
    public function setLength(l:Float) : Vector3;
    public function cross(a:Vector3, b:Vector3) : Vector3;
    public function crossSelf(v:Vector3) : Vector3;
    public function distanceTo(v:Vector3) : Float;
    public function distanceToSquared(v:Vector3) : Float;
    public function setPositionFromMatrix(m:Matrix4) : Void;
    public function setRotationFromMatrix(m:Matrix4) : Void;
    public function isZero() : Bool;
}
