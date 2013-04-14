package js.three;

@:native("THREE.SpotLightHelper")
extern class SpotLightHelper extends Object3D {
    public function new(light:Light, sphereSize:Float) : Void;
    public function update() : Void;
}
