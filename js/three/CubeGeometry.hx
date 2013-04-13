package js.three;

@:native("THREE.CubeGeometry")
extern class CubeGeometry extends Geometry {
    public function new(width:Float, height:Float, depth:Float, ?widthSegments:Float, ?heightSegments:Float, ?depthSegments:Float) : Void;
}
