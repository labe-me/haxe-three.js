package js.three;

@:native("THREE.Matrix3")
extern class Matrix3 {
    public var m : Array<Float>;
    public function new() : Void;
    public function transpose() : Matrix3;
    public function transposeIntoArray(dest:Array<Float>) : Matrix3;
}
