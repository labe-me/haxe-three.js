package js.three;

@:native("THREE.CubeCamera")
extern class CubeCamera extends Object3D {
    public function new(near:Float, far:Float, cubeResolution:Float) : Void;
    public function updateCubeMap(renderer:Renderer, scene:Scene) : Void;
}
