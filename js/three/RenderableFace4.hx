package js.three;

@:native("THREE.RenderableFace4")
extern class RenderableFace4 {
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var v3 : RenderableVertex;
    public var v4 : RenderableVertex;
    public var centroidModel : Vector3;
    public var normalModel : Vector3;
    public var normalModelView : Vector3;
    public var vertexNormalsLength : Float; // 0
    public var vertexNormalsModel : Array<Vector3>;
    public var vertexNormalsModelView : Array<Vector3>;
    public var color : Color;
    public var material : Material;
    public var uvs : Array<Array<Dynamic>>; //TODO
    public var z : Float;
    public function new() : Void;
}
