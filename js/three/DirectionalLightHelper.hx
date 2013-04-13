package js.three;

@:native("THREE.DirectionalLightHelper")
extern class DirectionalLightHelper extends Object3D {
    public function new(light:Light, sphereSize:Float) : Void;
    public function update() : Void;
}
