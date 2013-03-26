package js.three;

@:native("THREE.Edge")
extern class Edge {
    public var vertices : Array<Vertex>;
    public var vertexIndices : Array<Int>;
    public var faces : Array<Face3>;
    public var faceIndices : Array<Int>;
    public function new(v1:Vertex, v2:Vertex, vi1:Int, vi2:Int) : Void;
}
