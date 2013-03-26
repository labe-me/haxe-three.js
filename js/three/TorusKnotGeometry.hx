package js.three;

@:native("THREE.TorusKnotGeometry")
extern class TorusKnotGeometry extends Geometry {
    public function new(?radius:Float, ?tube:Float, ?segmentsR:Int, ?segmentsT:Int, ?p:Float, q:Float, ?heightScale:Float) : Void;
}
