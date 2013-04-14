package js.three;

@:native("THREE.CameraHelper")
extern class CameraHelper extends Line {
    public function new(camera:Camera) : Void;
    public function update() : Void;
}
