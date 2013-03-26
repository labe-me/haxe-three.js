package js.three;

@:native("THREE.BufferGeometry")
extern class BufferGeometry {
    public function new() : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
}
