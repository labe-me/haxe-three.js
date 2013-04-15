package js.three;

@:native("THREE.ImageUtils")
extern class ImageUtils {
    public static function loadTexture(url:String, ?mapping:Mapping, ?onLoad:Dynamic, ?onError:Dynamic) : Texture;
    public static function loadCompressedTexture(url:String, ?mapping:Mapping, ?onLoad:Dynamic, ?onError:Dynamic) : Texture;
    public static function loadTextureCube(array:Array<String>, ?mapping:Mapping, ?onLoad:Dynamic, ?onError:Dynamic) : Texture;
    public static function loadCompressedTextureCube(array:Array<String>, ?mapping:Mapping, ?onLoad:Dynamic, ?onError:Dynamic) : Texture;
    public static function getNormalMap(image:js.html.ImageElement, ?depth:Float) : js.html.CanvasElement;
    public static function generateDataTexture(width:Int, height:Int, color:Color) : DataTexture;
}
