package js.three;

@:native("THREE.HemisphereLightHelper")
extern class HemisphereLightHelper extends Object3D {
    public function new(light:Light, sphereSize:Float, ?arrowLength:Float, ?domeSize:Float) : Void;
    public function update() : Void;
}
