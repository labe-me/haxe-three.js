package js.three;

@:native("THREE.Math")
extern class Math {
    public static function clamp(x:Float, a:Float, b:Float) : Float;
    public static function clampBottom(x:Float, a:Float) : Float;
    public static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;
    public static function smoothstep(x:Float, min:Float, max:Float) : Float;
    public static function smootherstep(x:Float, min:Float, max:Float) : Float;
    public static function random16() : Float;
    public static function randInt(low:Int, high:Int) : Int;
    public static function randFloat(low:Float, high:Float) : Float;
    public static function randFloatSpread(range:Float) : Float; // <-range/2, range/2> interval
    public static function sign(x:Float) : Int;
    public static function degToRad(degrees:Float) : Float;
    public static function radToFloat(radians:Float) : Float;
}
