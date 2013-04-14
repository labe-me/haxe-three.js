package js.three;

@:native("THREE.WebGLRenderTarget")
extern class WebGLRenderTarget extends EventDispatcher {
    public var width : Int;
    public var height : Int;
    public var wrapS : Int; // ClampToEdgeWrapping
    public var wrapT : Int; // ClampToEdgeWrapping
    public var magFilter : Int; // LinearFilter
    public var minFilter : Int; // LinearMipMapLinearFilter
    public var anisotropy : Int; // 1
    public var offset : Vector2; // (0,0)
    public var repeat : Vector2; // (1,1)
    public var format : Int; // RGBAFormat
    public var type : Int; // UnsignedByteType
    public var depthBuffer : Bool; // true
    public var stencilBuffer : Bool; // true
    public var generateMipmaps : Bool; // true
    public var shareDepthFrom : Dynamic; // TODO: what is this?
    public function new(width:Float, height:Float, ?options:Dynamic) : Void;
    public function clone() : WebGLRenderTarget;
    public function dispose() : Void;
}
