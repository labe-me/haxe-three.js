package js.three;

@:native("THREE.RenderableVertex")
extern class RenderableVertex {
    public var positionWorld : Vector3;
    public var positionScreen : Vector4;
    public var visible : Bool; // true
    public function new() : Void;
    public function copy(v:RenderableVertex) : Void;
}
