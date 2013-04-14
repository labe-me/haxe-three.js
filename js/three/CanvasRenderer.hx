package js.three;

@:native("THREE.CanvasRenderer")
extern class CanvasRenderer implements Renderer {
    public var domElement : js.html.Element;
    public var autoClear : Bool; // true
    public var sortObjects : Bool; // true
    public var sortElements : Bool; // true
    public var info : { render:{ vertices:Int, faces:Int } };
    public function new(?parameters:Dynamic) : Void;
    public function supportsVertexTextures() : Void; // noop
    public function setFaceCulling() : Void; // noop
    public function setSize(width:Int, height:Int) : Void;
    public function setClearColor(color:Color, ?opacity:Float) : Void;
    public function setClearColorHex(hex:Int, ?opacity:Float) : Void;
    public function getMaxAnisotropy() : Int; // always 0
    public function clear() : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
