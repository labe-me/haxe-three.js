package js.three;

@:native("THREE.Texture")
extern class Texture {
    public var id : Int;
    public var image : Dynamic; // TODO: find real type { data:Dynamic, width:Int, height:Int }
    public var mapping : Mapping;
    public var wrapS : Int; // Wrapping.ClampToEdge
    public var wrapT : Int; // Wrapping.ClampToEdge
    public var magFilter : Int; // Filter.Linear
    public var minFilter : Int; // Filter.LinearMipMapLinear
    public var format : Int; // Format.RGBA
    public var type : Int; // Type.UnsignedByte
    public var offset : Vector2;
    public var repeat : Vector2;
    public var generateMipmaps : Bool; // true
    public var needsUpdate : Bool;
    public var onUpdate : Void -> Void; // TODO: WTF?
    public function new(image:js.Dom.Image, ?mapping:Mapping, ?wrapS:Int, ?wrapT:Int, ?magFilter:Int, ?minFilter:Int, ?format:Int, ?type:Int) : Void;
    public function clone() : Texture;
}

class Operation {
    public static inline var Multiply = 0;
    public static inline var Mix = 1;
}

interface Mapping {}
@:native("THREE.CubeReflectionMapping")
extern class CubeReflectionMapping implements Mapping {}
@:native("THREE.CubeRefractionMapping")
extern class CubeRefractionMapping implements Mapping  {}
@:native("THREE.LatitudeReflectionMapping")
extern class LatitudeReflectionMapping implements Mapping  {}
@:native("THREE.LatitudeRefractionMapping")
extern class LatitudeRefractionMapping implements Mapping  {}
@:native("THREE.SphericalReflectionMapping")
extern class SphericalReflectionMapping implements Mapping  {}
@:native("THREE.SphericalRefractionMapping")
extern class SphericalRefractionMapping implements Mapping  {}
@:native("THREE.UVMapping")
extern class UVMapping implements Mapping  {}

class Wrapping {
    public static inline var Repeat = 0;
    public static inline var ClampToEdge = 1;
    public static inline var MirroredRepeat = 2;
}

class Filter {
    public static inline var Nearest = 3;
    public static inline var NearestMipMapNearest = 4;
    public static inline var NearestMipMapLinear = 5;
    public static inline var Linear = 6;
    public static inline var LinearMipMapNearest = 7;
    public static inline var LinearMipMapLinear = 8;
}

class Type {
    public static inline var Byte = 9;
    public static inline var UnsignedByte = 10;
    public static inline var Short = 11;
    public static inline var UnsignedShort = 12;
    public static inline var Int = 13;
    public static inline var UnsignedInt = 14;
    public static inline var Float = 15;
}

class Format {
    public static inline var Alpha = 16;
    public static inline var RGB = 17;
    public static inline var RGBA = 18;
    public static inline var Luminance = 19;
    public static inline var LuminanceAlpha = 20;
}
