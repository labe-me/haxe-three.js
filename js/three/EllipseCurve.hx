package js.three;

@:native("THREE.EllipseCurve")
extern class EllipseCurve extends Curve {
    public function new(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
}
