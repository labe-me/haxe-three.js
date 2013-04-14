package js.three;

@:native("THREE.ShadowMapPlugin")
extern class ShadowMapPlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera) : Void;
    public function update(scene:Scene, camera:Camera) : Void;
}
