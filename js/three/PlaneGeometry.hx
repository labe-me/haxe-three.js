package js.three;

@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends Geometry {
    public function new(width:Float, height:Float, ?segmentsWidth:Float, ?segmentsHeight:Float) : Void;
}
