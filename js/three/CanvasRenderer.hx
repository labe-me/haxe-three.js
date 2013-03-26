package js.three;

@:native("THREE.CanvasRenderer")
extern class CanvasRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public var autoClear : Bool; // true
    public var sortObjects : Bool; // true
    public var sortElements : Bool; // true
    public var infos : { render:{vertices:Int, faces:Int} };
    public function new(?parameters:Dynamic) : Void;
    public function setSize(width:Int, height:Int) : Void;
    public function setClearColor(color:Color, opacity:Float) : Void;
    public function setClearColorHex(hex:Int, opacity:Float) : Void;
    public function clear() : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
