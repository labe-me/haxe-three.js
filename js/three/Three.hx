package js.three;

@:keep
class Three {
    public static inline function requestAnimationFrame(f:js.html.RequestAnimationFrameCallback) : Int {
        return untyped js.Browser.window.requestAnimationFrame(f);
    }

    public static inline function cancelAnimationFrame(f:Void->Void) {
        untyped js.Browser.window.cancelAnimationFrame(id);
    }

    private static function __init__() : Void untyped {
        #if !noEmbedJS
            #if debug
                haxe.macro.Compiler.includeFile("vendor/three.js/three.js");
            #else
                haxe.macro.Compiler.includeFile("vendor/three.js/three.min.js");
            #end
			haxe.macro.Compiler.includeFile("vendor/three.js/TrackballControls.js");
        #end
    }

    // GL STATE CONSTANTS

    public static inline var CullFaceNone = 0;
    public static inline var CullFaceBack = 1;
    public static inline var CullFaceFront = 2;
    public static inline var CullFaceFrontBack = 3;

    public static inline var FrontFaceDirectionCW = 0;
    public static inline var FrontFaceDirectionCCW = 1;

    // SHADOWING TYPES

    public static inline var BasicShadowMap = 0;
    public static inline var PCFShadowMap = 1;
    public static inline var PCFSoftShadowMap = 2;

    // MATERIAL CONSTANTS

    // side

    public static inline var FrontSide = 0;
    public static inline var BackSide = 1;
    public static inline var DoubleSide = 2;

    // shading

    public static inline var NoShading = 0;
    public static inline var FlatShading = 1;
    public static inline var SmoothShading = 2;

    // colors

    public static inline var NoColors = 0;
    public static inline var FaceColors = 1;
    public static inline var VertexColors = 2;

    // blending modes

    public static inline var NoBlending = 0;
    public static inline var NormalBlending = 1;
    public static inline var AdditiveBlending = 2;
    public static inline var SubtractiveBlending = 3;
    public static inline var MultiplyBlending = 4;
    public static inline var CustomBlending = 5;

    // custom blending equations
    // (numbers start from 100 not to clash with other
    //  mappings to OpenGL constants defined in Texture.js)

    public static inline var AddEquation = 100;
    public static inline var SubtractEquation = 101;
    public static inline var ReverseSubtractEquation = 102;

    // custom blending destination factors

    public static inline var ZeroFactor = 200;
    public static inline var OneFactor = 201;
    public static inline var SrcColorFactor = 202;
    public static inline var OneMinusSrcColorFactor = 203;
    public static inline var SrcAlphaFactor = 204;
    public static inline var OneMinusSrcAlphaFactor = 205;
    public static inline var DstAlphaFactor = 206;
    public static inline var OneMinusDstAlphaFactor = 207;

    // custom blending source factors

    // public static inline var ZeroFactor = 200;
    // public static inline var OneFactor = 201;
    // public static inline var SrcAlphaFactor = 204;
    // public static inline var OneMinusSrcAlphaFactor = 205;
    // public static inline var DstAlphaFactor = 206;
    // public static inline var OneMinusDstAlphaFactor = 207;
    public static inline var DstColorFactor = 208;
    public static inline var OneMinusDstColorFactor = 209;
    public static inline var SrcAlphaSaturateFactor = 210;


    // TEXTURE CONSTANTS

    public static inline var MultiplyOperation = 0;
    public static inline var MixOperation = 1;
    public static inline var AddOperation = 2;

    // Wrapping modes

    public static inline var RepeatWrapping = 1000;
    public static inline var ClampToEdgeWrapping = 1001;
    public static inline var MirroredRepeatWrapping = 1002;

    // Filters

    public static inline var NearestFilter = 1003;
    public static inline var NearestMipMapNearestFilter = 1004;
    public static inline var NearestMipMapLinearFilter = 1005;
    public static inline var LinearFilter = 1006;
    public static inline var LinearMipMapNearestFilter = 1007;
    public static inline var LinearMipMapLinearFilter = 1008;

    // Data types

    public static inline var UnsignedByteType = 1009;
    public static inline var ByteType = 1010;
    public static inline var ShortType = 1011;
    public static inline var UnsignedShortType = 1012;
    public static inline var IntType = 1013;
    public static inline var UnsignedIntType = 1014;
    public static inline var FloatType = 1015;

    // Pixel types

    // public static inline var UnsignedByteType = 1009;
    public static inline var UnsignedShort4444Type = 1016;
    public static inline var UnsignedShort5551Type = 1017;
    public static inline var UnsignedShort565Type = 1018;

    // Pixel formats

    public static inline var AlphaFormat = 1019;
    public static inline var RGBFormat = 1020;
    public static inline var RGBAFormat = 1021;
    public static inline var LuminanceFormat = 1022;
    public static inline var LuminanceAlphaFormat = 1023;

    // Compressed texture formats

    public static inline var RGB_S3TC_DXT1_Format = 2001;
    public static inline var RGBA_S3TC_DXT1_Format = 2002;
    public static inline var RGBA_S3TC_DXT3_Format = 2003;
    public static inline var RGBA_S3TC_DXT5_Format = 2004;

    // From src/objects/Line.js
    public static inline var LineStrip = 0;
    public static inline var LinePieces = 1;
}
