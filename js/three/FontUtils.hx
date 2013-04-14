package js.three;

typedef FontData = {
    familyName:String,
    cssFontWeight:String,
    cssFontStyle:String,
    glyphs : Dynamic
};

@:native("THREE.FontUtils")
extern class FontUtils {
    static var faces : Dynamic;
    static var face : String;
    static var weight : String;
    static var style : String;
    static var size : Float;
    static var divisions : Int;
    static function getFace() : Dynamic;
    static function loadFace(data:FontData) : FontData;
    static function drawText(text:String) : { paths:Array<Path>, offset:Float };
    static function extractGlyphPoints(c:String, face:Dynamic, scale:Float, offset:Float, path:Path) : { offset:Float, points:Array<Vector2>, path:Path };
    static function generateShapes(text:String, ?parameters:Dynamic) : Array<Shape>;
}
