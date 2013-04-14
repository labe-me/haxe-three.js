package js.three;

@:native("THREE.DepthPassPlugin")
extern class DepthPassPlugin {
    public var enabled : Bool;
    public var renderTarget : WebGLRenderTarget;
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera) : Void;
    public function update(scene:Scene, camera:Camera) : Void;
}
