package js.three;

@:native("THREE.Fog")
extern class Fog {
    public var name : String;
    public var color : Color;
    public var near : Float; // 1
    public var far : Float; // 1000
    public function new(hex:Int, ?near:Float, ?far:Float) : Void;
}
