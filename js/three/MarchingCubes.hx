package js.three;

@:native("THREE.MarchingCubes")
extern class MarchingCubes extends Object3D {
    public function new(resolution:Float, material:Material) : Void;
    public function generateGeometry() : Geometry;
    public function reset() : Void;
}
