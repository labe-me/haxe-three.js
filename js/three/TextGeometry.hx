package js.three;

@:native("THREE.TextGeometry")
extern class TextGeometry extends ExtrudeGeometry {
    /**
     * @author zz85 / http://www.lab4games.net/zz85/blog
     * @author alteredq / http://alteredqualia.com/
     *
     * For creating 3D text geometry in three.js
     *
     * Text = 3D Text
     *
     * parameters = {
     *  size:           <float>,    // size of the text
     *  height:         <float>,    // thickness to extrude text
     *  curveSegments:  <int>,      // number of points on the curves
     *
     *  font:           <string>,       // font name
     *  weight:         <string>,       // font weight (normal, bold)
     *  style:          <string>,       // font style  (normal, italics)
     *
     *  bevelEnabled:   <bool>,         // turn on bevel
     *  bevelThickness: <float>,        // how deep into text bevel goes
     *  bevelSize:      <float>,        // how far from text outline is bevel
     *
     *  bend:           <bool>          // bend according to hardcoded curve (generates bendPath)
     *  bendPath:       <curve>         // wraps text according to bend Path
     *  }
     *
     * It uses techniques used in:
     *
     *  typeface.js and canvastext
     *      For converting fonts and rendering with javascript
     *      http://typeface.neocracy.org
     *
     *  Triangulation ported from AS3
     *      Simple Polygon Triangulation
     *      http://actionsnippet.com/?p=1462
     *
     *  A Method to triangulate shapes with holes
     *      http://www.sakri.net/blog/2009/06/12/an-approach-to-triangulating-polygons-with-holes/
     *
     */
    /*  Usage Examples

    // TextGeometry wrapper

    var text3d = new TextGeometry( text, options );

    // Complete manner

    var textPath = new THREE.TextPath( text, options );
    var textShapes = textPath.toShapes();
    var text3d = new ExtrudeGeometry( textShapes, options );

    */
    public function new(text:String, ?parameters:Dynamic) : Void;
}

typedef FontData = {
    familyName:String,
    cssFontWeight:String,
    cssFontStyle:String,
    glyphs : Dynamic //
};

@:native("THREE.FontUtil")
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
}
