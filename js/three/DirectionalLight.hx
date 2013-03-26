package js.three;

@:native("THREE.DirectionalLight")
extern class DirectionalLight extends Light {
    public var intensity : Float; // 1
    public var distance : Float; // 0
    public function new(hexColor:Int, ?intensity:Float, ?distance:Float) : Void;
}
