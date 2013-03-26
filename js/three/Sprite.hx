package js.three;

@:native("THREE.Sprite")
extern class Sprite extends Object3D {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var map : Texture; // parameters.map | new Texture()
    public var blending : Int; // parameters.blending | Blending.Normal
    public var useScreenCoordinates : Bool; // parameters.useScreenCoordinates | true
    public var mergeWith3D : Bool; // parameters.mergeWith3D | !useScreenCoordinates
    public var affectedByDistance : Bool; // parameters.affectedByDistance | !useScreenCoordinates
    public var scaleByViewport : Bool; // parameters.scaleByViewport | !affectedByDistance
    public var alignment : Vector2; // parameters.alignment | SpriteAlign.center
    public var rotation3d : Float; // this.rotation
    public var opacity : Float; // 1
    public var uvOffset : Vector2; // (0,0)
    public var uvScale : Vector2; // (1,1)
    public function new(parameters:Dynamic) : Void;
    // override public function updateMatrix() : Void
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
