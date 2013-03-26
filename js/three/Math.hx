package js.three;

// TODO: Meow... import js.three.Three is not really helpful there, we may haxe to split the API into many files
@:native("THREE.Math")
extern class MathUtils {
    public static function clamp(x:Float, a:Float, b:Float) : Float;
    public static function clampBottom(x:Float, a:Float) : Float;
    public static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;
    public static function random16() : Float;
    public static function randInt(low:Int, high:Int) : Int;
    public static function randFloat(low:Float, high:Float) : Float;
    // <-range/2, range/2> interval
    public static function randFloatSpread(range:Float) : Float;
}
