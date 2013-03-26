package js.three;

@:native("THREE.Color")
extern class Color {
    public var r : Float;
    public var g : Float;
    public var b : Float;
    public function new(?hex:Int) : Void;
    public function copy(color:Color) : Color;
    public function copyCammaToLinear(color:Color) : Color;
    public function copyLinearToGamma(color:Color) : Color;
    public function convertGammaToLinear() : Color;
    public function convertLinearToGamma() : Color;
    public function setRGB(r:Float, g:Float, b:Float) : Color;
    public function setHSV(h:Float, s:Float, v:Float) : Color;
    public function setHex(hex:Int) : Color;
    public function getHex() : Int;
    public function getContextStyle() : String; // "rgb(r,g,b)"
    public function clone() : Color;
}
