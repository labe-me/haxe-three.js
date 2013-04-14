package js.three;

@:native("THREE.LensFlarePlugin")
extern class LensFlarePlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera, viewportWidth:Int, viewportHeight:Int) : Void;
}
