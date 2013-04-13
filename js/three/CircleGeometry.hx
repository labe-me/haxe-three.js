package js.three;

@:native("THREE.CircleGeometry")
extern class CircleGeometry extends Geometry {
    public function new(?radius:Float, ?segments:Int, ?thetaStart:Float, ?thetaLength:Float) : Void;
}
