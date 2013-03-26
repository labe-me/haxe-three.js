package js.three;

@:native("THREE.Quaternion")
extern class Quaternion {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function set(x:Float, y:Float, z:Float, w:Float) : Quaternion;
    public function copy(q:Quaternion) : Quaternion;
    public function setFromEuler(v:Vector3) : Quaternion;
    public function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion;
    public function setFromRotationMatrix(m:Matrix4) : Quaternion;
    public function calculateW() : Quaternion;
    public function inverse() : Quaternion;
    public function length() : Float;
    public function normalize() : Quaternion;
    public function multiplySelf(q:Quaternion) : Quaternion;
    public function multiply(q1:Quaternion, q2:Quaternion) : Quaternion;
    public function multiplyVector3(vec:Vector3, dest:Vector3) : Vector3;
    public static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion;
}
