package js.three;

@:native("THREE.Color")
extern class Color {
    public var r : Float;
    public var g : Float;
    public var b : Float;
    @:overload(function(?value:String) : Void {})
    public function new(?value:Int) : Void;
    @:overload(function(value:String) : Void {})
    public function set(value:Int) : Void;
    public function setHex(hex:Int) : Color; // this
    public function setRGB(r:Float, g:Float, b:Float) : Color; // this
    public function setHSL(h:Float, s:Float, l:Float) : Color; // this
    public function setStyle(style:String) : Color; // this
    public function copy(color:Color) : Color;
    public function copyCammaToLinear(color:Color) : Color;
    public function copyLinearToGamma(color:Color) : Color;
    public function convertGammaToLinear() : Color; // this
    public function convertLinearToGamma() : Color; // this
    public function getHex() : Int;
    public function getHexString() : String;
    public function getHSL() : {h:Float, s:Float, l:Float};
    public function getStyle() : String; // "rgb(r,g,b)"
    public function add(color:Color) : Color; // this
    public function addColors(color1:Color, color2:Color) : Color; // this
    public function addScalar(s:Float) : Color; // this
    public function multiply(color:Color) : Color; // this
    public function multiplyScalar(s:Float) : Color; // this
    public function lerp(color:Color, alpha:Float) : Color; // this
    public function equals(c:Color) : Bool;
    public function clone() : Color;
}

// Color.js also defines THREE.ColorKeywords
