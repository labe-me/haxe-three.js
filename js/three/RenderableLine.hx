package js.three;

@:native("THREE.RenderableLine") extern class RenderableLine {
    public var z : Float;
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var material : Material;
    public function new() : Void;
}
