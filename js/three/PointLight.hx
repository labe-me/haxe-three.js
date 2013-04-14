package js.three;

@:native("THREE.PointLight")
extern class PointLight extends Light {
    public var intensity : Float; // 1
    public var distance : Float; // 0
    public function new(hex:Int, ?intensity:Float, ?distance:Float) : Void;
    // override public function clone() : PointLight;
}
