package js.three;

@:native("THREE.CubeCamera")
extern class CubeCamera {
    public var heightOffset : Float;
    public var position : Vector3;
    public function new(near:Float, far:Float, heightOffset:Float, cubeResolution:Float) : Void;
    public function updatePosition(newPos:Vector3) : Void;
    public function updateCubeMap(renderer:Renderer, scene:Scene) : Void;
}
