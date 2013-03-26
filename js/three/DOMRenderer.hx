package js.three;

@:native("THREE.DOMRenderer")
extern class DOMRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public function new() : Void;
    public function setSize(width:Int, height:Int) : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
