package js.three;

@:native("THREE.Geometry")
extern class Geometry {
    public var id : Int;
    public var name : String;
    public var vertices : Array<Vertex>;
    public var colors : Array<Color>;
    public var materials : Array<Material>;
    public var faces : Array<Face>;
    public var faceUvs : Array<Array<UV>>;
    public var faceVertexUvs : Array<Array<UV>>;
    public var morphTargets : Array<{name:String, vertices:Array<Vertex>}>;
    public var morphColors : Array<Color>;
    public var skinWeights : Array<Vector4>;
    public var skinIndices : Array<Vector4>;
    public var boundingBox : Box3;
    public var boundingSphere : { radius:Float };
    public var hasTangents : Bool; // false
    // public var dynamic : Bool; // true  this.verticesNeedUpdate = false;
    public var elementsNeedUpdate : Bool; // false
    public var uvsNeedUpdate : Bool; // false
    public var normalsNeedUpdate : Bool; // false
    public var tangentsNeedUpdate : Bool; // false
    public var colorsNeedUpdate : Bool; // false
    public var lineDistancesNeedUpdate : Bool; // false
    public function new() : Void;
    public function applyMatrix(matrix:Matrix4) : Void;
    public function computeCentroids() : Void;
    public function computeFaceNormals() : Void;
    public function computeVertexNormals() : Void;
    public function computeMorphNormals() : Void;
    public function computeTangents() : Void;
    public function computeLineDistance() : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
    public function mergeVertices() : Void;
    public function clone() : Geometry;
    public function dispose() : Void;
}
