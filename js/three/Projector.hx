package js.three;

@:native("THREE.Projector")
extern class Projector {
    public function new() : Void;
    public function computeFrustum(m:Matrix4) : Void;
    public function projectVector(vector:Vector3, camera:Camera) : Void;
    public function unprojectVector(vector:Vector3, camera:Camera) : Vector3;
    public function pickingRay(vector:Vector3, camera:Camera) : Ray;
    public function projectGraph(root:Object3D, sort:Bool) : Dynamic; // returns _renderData
    public function projectScene(scene:Scene, camera:Camera, sort:Bool) : Dynamic; // returns _renderData
}
