package js.three;

@:native("THREE.TorusGeometry")
extern class TorusGeometry extends Geometry {
    public function new(?radius:Float, ?tube:Float, ?segmentsR:Int, ?segmentsT:Int, ?arc:Float) : Void;
}
