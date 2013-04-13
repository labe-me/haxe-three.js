package js.three;

@:native("THREE.TubeGeometry")
extern class TubeGeometry extends Geometry {
    public function new(path:Path, ?segments:Int, ?radius:Float, ?radiusSegments:Int, ?closed:Bool, ?debug:Object3D) : Void;
}
