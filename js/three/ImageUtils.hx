package js.three;

@:native("THREE.ImageUtils")
extern class ImageUtils {
    public static function loadTexture(path:String, ?mapping:Int, ?cb:js.Dom.Image->Void) : Texture;
    public static function loadTextureCube(array:Array<String>, mapping:Int, cb:js.Dom.Image->Void) : Texture;
    public static function getNormalMap(image:js.Dom.Image, ?depth:Float) : js.Dom.HtmlDom; // Canvas
}
