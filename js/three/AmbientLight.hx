package js.three;

@:native("THREE.AmbientLight")
extern class AmbientLight extends Light {
    public function new(hexColor:Int) : Void;
    // override public function clone() : AmbientLight;
}
