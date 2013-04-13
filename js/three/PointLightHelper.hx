package js.three;

@:native("THREE.PointLightHelper")
extern class PointLightHelper extends Object3D {
    public function new(light:Light, sphereSize:Float) : Void;
    public function update() : Void;
}
