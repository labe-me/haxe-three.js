package js.three;

@:native("THREE.Material")
extern class Material {
    public var name : String;
    public var id : Int;
    public var opacity : Float; // 1
    public var transparent : Bool; // false
    public var blending : Int; // Blending.Normal
    public var depthTest : Bool; // true
    public var depthWrite : Bool; // true
    public var polygonOffset : Bool; // false
    public var polygonOffsetFactor : Float; // 0
    public var polygonOffsetUnits : Float; // 0
    public var alphaTest : Float; // 0
    public var overdraw : Bool; // true, Boolean for fixing antialiasing gaps in CanvasRenderer
    public function new(?parameters:Dynamic) : Void;
}

class Shading {
    public static inline var None = 0;
    public static inline var Flat = 1;
    public static inline var Smooth = 2;
}

class Colors {
    public static inline var NoColors = 0;
    public static inline var FaceColors = 1;
    public static inline var VertexColors = 2;
}

class Blending {
    public static inline var NormalBlending = 0;
    public static inline var AdditiveBlending = 1;
    public static inline var SubtractiveBlending = 2;
    public static inline var MultiplyBlending = 3;
    public static inline var AdditiveAlphaBlending = 4;
}
