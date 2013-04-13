package js.three;

@:native("THREE.Quaternion")
extern class Quaternion {
    public var x : Float; // 0
    public var y : Float; // 0
    public var z : Float; // 0
    public var w : Float; // 1
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
    public function set(x:Float, y:Float, z:Float, w:Float) : Quaternion; // this
    public function copy(q:Quaternion) : Quaternion; // this
    // order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
    public function setFromEuler(v:Vector3, ?order:String) : Quaternion; // this
    public function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion; // this
    public function setFromRotationMatrix(m:Matrix3) : Quaternion; // this
    public function inverse() : Quaternion; // this
    public function conjugate() : Quaternion; // this
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Quaternion; // this
    public function multiply(q:Quaternion) : Quaternion; // this
    public function multiplyQuaternion(a:Quaternion, b:Quaternion) : Quaternion; // this
    // multiplyVector3 is deprecated
    public function slerp(qb:Quaternion, t:Float) : Quaternion; // this
    public function equals(q:Quaternion) : Bool;
    public function clone() : Quaternion;
    // "Same field name can't be use for both static and instance : slerp"
    // public static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion ; // qm
}
