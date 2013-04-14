package js.three;

@:native("THREE.Vertex")
extern class Vertex {
    public var position : Vector3;
    public function new(?pos:Vector3) : Void;
}
