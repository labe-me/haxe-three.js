package js.three;

@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends Geometry {
    public function new(width:Float, height:Float, ?widthSegments:Float, ?heightSegments:Float) : Void;
}
