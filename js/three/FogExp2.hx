package js.three;

@:native("THREE.FogExp2")
extern class FogExp2 {
    public var color : Color;
    public var density : Float; // 0.00025
    public function new(hex:Int, ?density:Float) : Void;
}
