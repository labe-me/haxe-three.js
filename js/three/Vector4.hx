package js.three;

@:native("THREE.Vector4")
extern class Vector4 {
    public var x : Float; // 0
    public var y : Float; // 0
    public var z : Float; // 0
    public var w : Float; // 0
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
    public function set(x:Float, y:Float, z:Float, w:Float) : Void;
    public function setX(x:Float) : Vector4; // this
    public function setY(y:Float) : Vector4; // this
    public function setZ(z:Float) : Vector4; // this
    public function setW(w:Float) : Vector4; // this
    public function setComponent(index:Int, value:Float) : Void;
    public function getComponent(index:Int) : Float;
    public function copy(v:Vector4) : Vector4; // this
    public function add(v:Vector4) : Vector4; // this
    public function addScalar(s:Float) : Vector4; // this
    public function addVectors(a:Vector4, b:Vector4) : Vector4; // this
    public function sub(v:Vector4) : Vector4; // this
    public function subVectors(a:Vector4, b:Vector4) : Vector4; // this
    public function multiplyScalar(s:Float) : Vector4; // this
    public function applyMatrix4(m:Matrix4) : Vector4; // this
    public function divideScalar(s:Float) : Vector4; // this
    public function setAxisAngleFromQuaternion(q:Quaternion) : Vector4; // this
    public function setAxisAngleFromRotationMatrix(m:Matrix4) : Vector4; // this
    public function min(v:Vector4) : Vector4; // this
    public function max(v:Vector4) : Vector4; // this
    public function clamp(min:Vector4, max:Vector4) : Vector4; // this
    public function negate() : Vector4; // this
    public function dot(v:Vector4) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function lengthManhattan() : Float;
    public function normalize() : Vector4; // this
    public function setLength(l:Float) : Vector4; // this
    public function lerp(v:Vector4, alpha:Float) : Vector4; // this
    public function equals(v:Vector4) : Bool;
    public function toArray() : Array<Float>;
    public function clone() : Vector4;
}
