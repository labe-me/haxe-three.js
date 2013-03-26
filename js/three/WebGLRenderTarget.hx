package js.three;

@:native("THREE.WebGLRenderTarget")
extern class WebGLRenderTarget {
    public var width : Int;
    public var height : Int;
    public var wrapS : Int; // Wrapping.ClampToEdge
    public var wrapT : Int; // Wrapping.ClampToEdge
    public var magFilter : Int; // Filter.Linear
    public var minFilter : Int; // Filter.LinearMipMapLinear
    public var offset : Vector2; // (0,0)
    public var repeat : Vector2; // (1,1)
    public var format : Int; // RGBAFormat
    public var type : Int; // Type.UnsignedByte
    public var depthBuffer : Bool; // true
    public var stencilBuffer : Bool; // true
    public var generateMipmaps : Bool; // true
    public function new(width:Float, height:Float, ?options:Dynamic) : Void;
    public function clone() : WebGLRenderTarget;
}
