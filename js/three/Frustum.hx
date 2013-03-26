package js.three;

@:native("THREE.Frustum")
extern class Frustum {
    public var planes : Array<Vector4>;
    public function new() : Void;
    public function setFromMatrix(m:Matrix4) : Void;
    public function contains(o:Object3D) : Bool;
}
