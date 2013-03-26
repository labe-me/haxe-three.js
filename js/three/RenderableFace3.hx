package js.three;

@:native("THREE.RenderableFace3") extern class RenderableFace3 {
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var v3 : RenderableVertex;
    public var centroidWorld : Vector3;
    public var centroidScreen : Vector3;
    public var normalWorld : Vector3;
    public var vertexNormalsWorld : Array<Vector3>;
    public var material : Material;
    public var faceMaterial : Material;
    public var uvs : Array<Array<Dynamic>>; //TODO
    public var z : Float;
    public function new() : Void;
}
