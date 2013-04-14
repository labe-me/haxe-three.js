package js.three;

@:native("THREE.SkinnedMesh")
extern class SkinnedMesh extends Mesh {
    public var useVertexTexture : Bool; // true
    public var identityMatrix : Matrix4;
    public var bones : Array<Bone>;
    public var bonesMatrices : Array<Float>;
    public function new(geometry:Geometry, ?material:Material, ?useVertexTexture:Bool) : Void;
    public function addBone(bone:Bone) : Bone;
    //override public function updateMatrixWorld(force:Bool) : Void;
    public function pose() : Void;
    // override public function clone(?object:SkinnedMesh) : SkinnedMesh;
}
