package js.three;

@:native("THREE.Vector3")
extern class Vector3 {
    public var x : Float; // 0
    public var y : Float; // 0
    public var z : Float; // 0
    public function new(?x:Float, ?y:Float, ?z:Float) : Void;
    public function set(x:Float, y:Float, z:Float) : Vector3; // this
    public function setX(x:Float) : Vector3; // this
    public function setY(y:Float) : Vector3; // this
    public function setZ(z:Float) : Vector3; // this
    public function setComponent(index:Int, value:Float) : Void;
    public function getComponent(index:Int) : Float;
    public function copy(v:Vector3) : Vector3; // this
    public function add(v:Vector3) : Vector3; // this
    public function addVectors(a:Vector3, b:Vector3) : Vector3; // this
    public function addScalar(s:Float) : Vector3; // this
    public function sub(v:Vector3) : Vector3; // this
    public function subVectors(a:Vector3, b:Vector3) : Vector3; // this
    public function multiply(v:Vector3) : Vector3; // this
    public function multiplyScalar(s:Float) : Vector3; // this
    public function multiplyVectors(a:Vector3, b:Vector3) : Vector3; // this
    public function applyMatrix3(m:Matrix3) : Vector3; // this
    public function applyMatrix4(m:Matrix4) : Vector3; // this
    public function applyProjection(m:Matrix3) : Vector3; // this
    public function applyQuaternion(q:Quaternion) : Vector3; // this
    public function transformDirection(m:Matrix4) : Vector3; // this
    public function divide(v:Vector3) : Vector3; // this
    public function divideScalar(s:Float) : Vector3; // this
    public function min(v:Vector3) : Vector3; // this
    public function max(v:Vector3) : Vector3; // this
    public function clamp(min:Vector3, max:Vector3) : Vector3; // this
    public function negate() : Vector3; // this
    public function dot(v:Vector3) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function lengthManhattan() : Float;
    public function normalize() : Vector3; // this
    public function setLength(l:Float) : Vector3; // this
    public function lerp(v:Vector3, alpha:Float) : Vector3; // this
    public function cross(v:Vector3) : Vector3; // this
    public function crossVectors(a:Vector3, b:Vector3) : Vector3; // this
    public function angleTo(v:Vector3) : Float;
    public function distanceTo(v:Vector3) : Float;
    public function distanceToSquared(v:Vector3) : Float;
    public function setEulerFromRotationMatrix(m:Matrix3, order:String) : Vector3; // this
    public function setEulerFromQuaternion(q:Quaternion, order:String) : Vector3; // this
    public function getPositionFromMatrix(m:Matrix4) : Vector3; // this
    public function getScaleFromMatrix(m:Matrix4) : Vector3; // this
    public function getColumnFromMatrix(index:Int, matrix:Matrix4) : Vector3; // this
    public function equals(v:Vector3) : Bool;
    public function toArray() : Array<Float>;
    public function clone() : Vector3;
    public function applyEuler(v:Vector3, eulerOrder:String) : Vector3; // this
    public function applyAxisAngle(axis:Vector3, angle:Float) : Vector3; // this
    public function projectOnVector(vector:Vector3) : Vector3; // this
    public function projectOnPLane(planeNormal:Plane) : Vector3; // this
    public function reflect(vector:Vector3) : Vector3; // this
}
