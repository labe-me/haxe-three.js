package js.three;

@:native("THREE.CameraHelper")
extern class CameraHelper extends Object3D {
    public var lineGeometry : Geometry;
    public var lineMaterial : LineBasicMaterial;
    public function new(camera:Camera) : Void;
    public function update(camera:Camera) : Void;
}
