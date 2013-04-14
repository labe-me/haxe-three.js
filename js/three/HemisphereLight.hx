package js.three;

@:native("THREE.HemisphereLight")
extern class HemisphereLight {
    public var groundColor : Color;
    public var intensity : Float; // 1
    public function new(skyColorHex:Int, groundColorHex:Int, ?intensity:Float) : Void;
    // override public function clone() : HemisphereLight;
}
