package js.three;

@:native("THREE.TextureLoader")
extern class TextureLoader extends EventDispatcher /* not Loader, for some reason */ {
    public function new() : Void;
    public function load(url:String) : Void;
}
