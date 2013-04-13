package js.three;

@:native("THREE.ImageLoader")
extern class ImageLoader extends EventDispatcher /* not Loader, for some reason */ {
    public function new() : Void;
    public function load(url:String, image:js.html.Element) : Void;
}
