package js.three;

@:native("THREE.Texture")
extern class Texture extends EventDispatcher {
    public var id : Int;
    public var name : String;
    public var image : Dynamic; // TODO: find real type { data:Dynamic, width:Int, height:Int }
    public var mipmaps : Array<Dynamic>; // TODO: more specific type?
    public var mapping : Mapping;
    public var wrapS : Int; // ClampToEdgeWrapping
    public var wrapT : Int; // ClampToEdgeWrapping
    public var magFilter : Int; // LinearFilter
    public var minFilter : Int; // LinearMipMapLinearFilter
    public var anisotropy : Int; // 1
    public var format : Int; // RGBAFormat
    public var type : Int; // UnsignedByteType
    public var offset : Vector2; // (0,0)
    public var repeat : Vector2; // (1,1)
    public var generateMipmaps : Bool; // true
    public var premultiplyAlpha : Bool; // false
    public var flipY : Bool; // true
    public var unpackAlignment : Int; // 4
    public var needsUpdate : Bool;
    public var onUpdate : Void -> Void; // TODO: WTF?
    public function new(image:Dynamic, ?mapping:Mapping, ?wrapS:Int, ?wrapT:Int, ?magFilter:Int, ?minFilter:Int, ?format:Int, ?type:Int, ?anisotropy:Int) : Void;
    public function clone() : Texture;
    public function dispose() : Void;
}
