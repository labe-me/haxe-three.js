package js.three;

@:native("THREE.Geometry")
extern class Geometry {
    public var id : Int;
    public var vertices : Array<Vertex>;
    public var colors : Array<Color>;
    public var materials : Array<Material>;
    public var faces : Array<Face4>;
    public var faceUvs : Array<Array<UV>>;
    public var faceVertexUvs : Array<Array<UV>>;
    public var morphTargets : Array<{name:String, vertices:Array<Vertex>}>;
    public var morphColors : Array<Color>;
    public var skinWeights : Array<Vector4>;
    public var skinIndices : Array<Vector4>;
    public var boundingBox : { x:Array<Float>, y:Array<Float>, z:Array<Float> };
    public var boundingSphere : { radius:Float };
    public var hasTangents : Bool; // false
    // public var dynamic : Bool; // false, unless set to true the *Arrays will be deleted once sent to a buffer.
    public function new() : Void;
    public function applyMatrix(matrix:Matrix4) : Void;
    public function computeCentroids() : Void;
    public function computeFaceNormals() : Void;
    public function computeVertexNormals() : Void;
    public function computeTangents() : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
    public function mergeVertices() : Void;
}
