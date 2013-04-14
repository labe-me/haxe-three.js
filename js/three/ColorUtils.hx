package js.three;

@:native("THREE.ColorUtils")
extern class ColorUtils {
    public static function adjustHSV(color:Color, h:Float, s:Float, v:Float) : Void;
    public static function rgbToHsv(color:Color, ?hsv:{h:Float, s:Float, v:Float}) : {h:Float, s:Float, v:Float};
}
