package js.three;

@:native("THREE.SpriteMaterial")
extern class SpriteMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var map : Texture;
    public var useScreenCoordinates : Bool; // true
    // public var depthTest : Bool; // false
    public var sizeAttenuation : Bool; // false
    public var scaleByViewport : Bool; // false
    public var alignment : Vector2; // SpriteAlignment.center.clone()
    public var fog : Bool; // true
    public var uvOffset : Vector2; // (0,0)
    public var uvScale : Vector2; // (1,1)
    public function new(?parameters:Dynamic) : Void;
}

class SpriteAlign {
    public static var topLeft = new Vector2(1, -1);
    public static var topCenter = new Vector2(0, -1);
    public static var topRight = new Vector2(-1, -1);
    public static var centerLeft = new Vector2(1, 0);
    public static var center = new Vector2(0, 0);
    public static var centerRight = new Vector2(-1, 0);
    public static var bottomLeft = new Vector2(1, 1);
    public static var bottomCenter = new Vector2(0, 1);
    public static var bottomRight = new Vector2(-1, 1);
}
