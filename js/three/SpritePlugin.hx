package js.three;

@:native("THREE.SpritePlugin")
extern class SpritePlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera, viewportWidth:Int, viewportHeight:Int) : Void;
}
