package js.three;

@:native("THREE.Material")
extern class Material extends EventDispatcher {
    public var name : String;
    public var id : Int;
    public var opacity : Float; // 1
    public var transparent : Bool; // false
    public var blending : Int; // NormalBlending
    public var blendSrc : Int; // SrcAlphaFactor
    public var blendDst : Int; // SrcAlphaFactor
    public var blendEquation : Int; // AddEquation
    public var depthTest : Bool; // true
    public var depthWrite : Bool; // true
    public var polygonOffset : Bool; // false
    public var polygonOffsetFactor : Float; // 0
    public var polygonOffsetUnits : Float; // 0
    public var alphaTest : Float; // 0
    public var overdraw : Bool; // true, Boolean for fixing antialiasing gaps in CanvasRenderer
    public var visible : Bool; // true
    public var side : Int; // FrontSide
    public var needsUpdate : Bool;
    public function new() : Void;
    public function setValues(?values:Dynamic) : Void;
    public function clone(?material:Material) : Material;
    public function dispose() : Void;
}
