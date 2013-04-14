package js.three;

@:native("THREE.SplineCurve3")
extern class SplineCurve3 extends Curve3 {
    public function new(?points:Array<Vector3>) : Void;
}
