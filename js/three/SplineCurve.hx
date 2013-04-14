package js.three;

@:native("THREE.SplineCurve")
extern class SplineCurve extends Curve {
    public function new(?points:Array<Vector2>) : Void;
}
