package js.three;

@:native("THREE.RenderableObject") extern class RenderableObject {
    public var object : Dynamic; // TODO: Object3D?
    public var z : Float;
    public function new() : Void;
}
