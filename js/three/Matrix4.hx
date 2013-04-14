package js.three;

@:native("THREE.Matrix4")
extern class Matrix4 {
    public var elements : Array<Float>;
    public function new(?n11:Float, ?n12:Float, ?n13:Float, ?n14:Float,
                        ?n21:Float, ?n22:Float, ?n23:Float, ?n24:Float,
                        ?n31:Float, ?n32:Float, ?n33:Float, ?n34:Float,
                        ?n41:Float, ?n42:Float, ?n43:Float, ?n44:Float) : Void;
    public function set(n11:Float, n12:Float, n13:Float, n14:Float,
                        n21:Float, n22:Float, n23:Float, n24:Float,
                        n31:Float, n32:Float, n33:Float, n34:Float,
                        n41:Float, n42:Float, n43:Float, n44:Float) : Matrix4; // this
    public function identity() : Matrix4; // this
    public function copy(m:Matrix4) : Matrix4; // this
    // order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
    public function setRotationFromEuler(v:Vector3, ?order:String) : Matrix4; // this
    public function setRotationFromQuaternion(q:Quaternion) : Matrix4; // this
    public function lookAt(eye:Vector3, target:Vector3, up:Vector3) : Matrix4; // this
    public function multiply(m:Matrix4) : Matrix4; // this
    public function multiplyMatrices(a:Matrix4, b:Matrix4) : Matrix4; // this
    public function multiplyToArray(a:Matrix4, b:Matrix4, r:Array<Float>) : Matrix4; // this
    public function multiplyScalar(s:Float) : Matrix4; // this
    // multiplyVector3 is deprecated
    // multiplyVector4 is deprecated
    public function multiplyVector3Array(a:Array<Vector3>) : Array<Vector3>; // a
    // rotateAxis is deprecated
    public function crossVector(a:Vector4) : Vector4;
    public function determinant() : Float; // this
    public function transpose() : Matrix4; // this
    public function flattenToArray(flat:Array<Float>) : Array<Float>; // flat
    public function flattenToArrayOffset(flat:Array<Float>, offset:Float) : Array<Float>; // flat
    // getPosition is deprecated
    public function setPosition(v:Vector3) : Matrix4; // this
    public function getInverse(m:Matrix4) : Matrix4; // this
    public function extractPosition(m:Matrix4) : Matrix4; // this
    public function extractRotation(m:Matrix4) : Matrix4; // this
    public function translate(v:Vector3) : Matrix4; // this
    public function rotateX(angle:Float) : Matrix4; // this
    public function rotateY(angle:Float) : Matrix4; // this
    public function rotateZ(angle:Float) : Matrix4; // this
    public function rotateByAxis(axis:Vector3, angle:Float) : Matrix4; // this
    public function scale(v:Vector3) : Matrix4; // this
    public function getMaxScaleOnAxis() : Float;
    public function makeTranslation(x:Float, y:Float, z:Float) : Matrix4; // this
    public function makeRotationX(theta:Float) : Matrix4; // this
    public function makeRotationY(theta:Float) : Matrix4; // this
    public function makeRotationZ(theta:Float) : Matrix4; // this
    public function makeRotationAxis(axis:Vector3, angle:Float) : Matrix4; // this
    public function makeScale(x:Float, y:Float, z:Float) : Matrix4; // this
    public function makeFrustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4; // this
    public function makePerspective(fov:Float, aspect:Float, near:Float, far:Float) : Matrix4; // this
    public function makeOrthographic(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4; // this
    public function clone() : Matrix4;
    public function compose(position:Vector3, quaternion:Quaternion, scale:Vector3) : Matrix4; // this
    public function decompose(?position:Vector3, ?quaternion:Quaternion, ?scale:Vector3) : Array<Dynamic>; // [translation, rotation, scale]
}
