package js.three;

// Deprecated? If so, replace with "interface Camera"
@:native("THREE.Camera")
extern class Camera extends Object3D {
    public function new() : Void;
    public var matrixWorldInverse : Matrix4;
    public var projectionMatrix : Matrix4;
    public var projectionMatrixInverse : Matrix4;
    // override public function lookAt(v:Vector3) : Void;
}
