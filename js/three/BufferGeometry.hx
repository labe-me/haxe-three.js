package js.three;

@:native("THREE.BufferGeometry")
extern class BufferGeometry {
    public var id : Int;
    public var attributes : Dynamic; // hash map
    // public var dynamic : Bool; // false
    public var offsets : Array<Float>; // or Array<Int> ?
    public var boundingBox : { min:Vector3, max:Vector3 };
    public var boundingSphere : { radius:Float };
    public var hasTangents : Bool; // false
    public var morphTargets : Array<{name:String, vertices:Array<Vertex>}>; // "for compatibility"
    public function new() : Void;
    public function applyMatrix(matrix:Matrix3) : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
    public function computeVertexNormals() : Void;
    public function dispose() : Void;
}
