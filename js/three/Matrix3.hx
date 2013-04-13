package js.three;

@:native("THREE.Matrix3")
extern class Matrix3 {
    public var elements : Array<Float>;
    public function new(?n11:Float, ?n12:Float, ?n13:Float,
                        ?n21:Float, ?n22:Float, ?n23:Float,
                        ?n31:Float, ?n32:Float, ?n33:Float) : Void;
    public function set(n11:Float, n12:Float, n13:Float,
                        n21:Float, n22:Float, n23:Float,
                        n31:Float, n32:Float, n33:Float) : Matrix3; // this
    public function identity() : Matrix3; // this
    public function copy(m:Matrix3) : Matrix3; // this
    // multiplyVector3 is deprecated
    public function multiplyVector3Array(a:Array<Vector3>) : Array<Vector3>;
    public function multiplyScalar(s:Float) : Matrix3; // this
    public function determinant() : Float;
    public function getInverse(matrix:Matrix3, ?throwOnInvertible:Bool) : Matrix3; // this
    public function transpose() : Matrix3; // this
    public function getNormalMatrix(m:Matrix4) : Matrix3; // this
    public function transposeIntoArray(dest:Array<Float>) : Matrix3; // this
    public function clone() : Matrix3;
}
