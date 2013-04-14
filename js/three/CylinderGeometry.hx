package js.three;

@:native("THREE.CylinderGeometry")
extern class CylinderGeometry extends Geometry {
    public function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?segmentsRadius:Float, ?segmentsHeight:Float, ?openEnded:Bool) : Void;
}
