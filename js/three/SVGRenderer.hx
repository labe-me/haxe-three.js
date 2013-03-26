package js.three;

@:native("THREE.SVGRenderer")
extern class SVGRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public var autoClear : Bool; // true
    public var sortObjects : Bool; // true
    public var sortElements : Bool; // true
    public var info : { render:{vertices:Int, faces:Int} };
    public function new() : Void;
    public function setQuality(q:String) : Void; // high / low
    public function setSize(width:Int, height:Int) : Void;
    public function clear() : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
