package js.three;

@:native("THREE.Matrix4")
extern class Matrix4 {
    public var n11 : Float;
    public var n12 : Float;
    public var n13 : Float;
    public var n14 : Float;
    public var n21 : Float;
    public var n22 : Float;
    public var n23 : Float;
    public var n24 : Float;
    public var n31 : Float;
    public var n32 : Float;
    public var n33 : Float;
    public var n34 : Float;
    public var n41 : Float;
    public var n42 : Float;
    public var n43 : Float;
    public var n44 : Float;
    public var flat : Array<Float>;
    public var m33 : Matrix3;
    @:overload(function() : Void {})
    @:overload(function(?n11:Float, ?n12:Float, ?n13:Float, ?n14:Float, ?n21:Float, ?n22:Float, ?n23:Float, ?n24:Float, ?n31:Float, ?n32:Float, ?n33:Float, ?n34:Float, ?n41:Float, ?n42:Float, ?n43:Float, ?n44:Float) : Void {})
    public function new(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Void;
    public function set(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Matrix4;
    public function identity() : Matrix4;
    public function copy(m:Matrix4) : Matrix4;
    public function lookAt(eye:Vector3, center:Vector3, up:Vector3) : Matrix4;
    public function multiply(a:Matrix4, b:Matrix4) : Matrix4;
    public function multiplySelf(m:Matrix4) : Matrix4;
    public function multiplyToArray(a:Matrix4, b:Matrix4, r:Array<Float>) : Matrix4;
    public function multiplyScalar(s:Float) : Matrix4;
    public function multiplyVector3(v:Vector3) : Vector3;
    public function multiplyVector4(v:Vector4) : Vector4;
    public function rotateAxis(v:Vector3) : Vector3;
    public function crossVector(a:Vector4) : Vector4;
    public function determinant() : Float;
    public function transpose() : Matrix4;
    public function clone() : Matrix4;
    public function flatten() : Array<Float>;
    public function flattenToArray(flat:Array<Float>) : Array<Float>;
    public function flattenToArrayOffset(flat:Array<Float>, offset:Float) : Array<Float>;
    public function setTranslation(x:Float, y:Float, z:Float) : Matrix4;
    public function setScale(x:Float, y:Float, z:Float) : Matrix4;
    public function setRotationX(theta:Float) : Matrix4;
    public function setRotationY(theta:Float) : Matrix4;
    public function setRotationZ(theta:Float) : Matrix4;
    public function setRotationAxis(axis:Vector3, angle:Float) : Matrix4;
    public function setPosition(v:Vector3) : Matrix4;
    public function getPosition() : Vector3;
    public function getColumnX() : Vector3;
    public function getColumnY() : Vector3;
    public function getColumnZ() : Vector3;
    public function getInverse(m:Matrix4) : Matrix4;
    // order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
    public function setRotationFromEuler(v:Vector3, ?order:String) : Matrix4;
    public function setRotationFromQuaternion(q:Quaternion) : Matrix4;
    public function scale(v:Vector3) : Matrix4;
    public function compose(translation:Vector3, rotation:Quaternion, scale:Vector3) : Matrix4;
    public function decompose(?translation:Vector3, ?rotation:Quaternion, ?scale:Vector3) : Array<Dynamic>; // [translation, rotation, scale]
    public function extractPosition(m:Matrix4) : Matrix4;
    public function extractRotation(m:Matrix4, s:Float) : Matrix4;
    public function rotateByAxis(axis:Vector3, angle:Float) : Matrix4;
    public function rotateX(angle:Float) : Matrix4;
    public function rotateY(angle:Float) : Matrix4;
    public function rotateZ(angle:Float) : Matrix4;
    public function translate(v:Vector3) : Matrix4;
    //public static function makeInvert(m1:Matrix4, m2:Matrix4);
    public static function makeInvert3x3(m1:Matrix4) : Matrix3;
    public static function makeFrustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4;
    public static function makePerspective(fov:Float, aspect:Float, near:Float, far:Float) : Matrix4;
    public static function makeOrtho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4;
}
