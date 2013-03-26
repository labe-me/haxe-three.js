package js.three;

@:native("THREE.SkinnedMesh")
extern class SkinnedMesh extends Mesh {
    public var identityMatrix : Matrix4;
    public var bones : Array<Bone>;
    public var bonesMatrices : Float32Array;
    public function addBone(bone:Bone) : Bone;
    //override public function updateMatrixWorld(force:Bool) : Void;
    public function pose() : Void;
}
