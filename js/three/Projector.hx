package js.three;

@:native("THREE.Projector")
extern class Projector {
    public function new() : Void;
    public function projectVector(vector:Vector3, camera:Camera) : Vector3;
    public function unprojectVector(vector:Vector3, camera:Camera) : Vector3;
    public function pickingRay(vector:Vector3, camera:Camera) : Raycaster;
    public function projectScene(scene:Scene, camera:Camera, sort:Bool) : Dynamic; // returns _renderData
}
