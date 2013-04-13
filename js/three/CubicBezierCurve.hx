package js.three;

@:native("THREE.CubicBezierCurve")
extern class CubicBezierCurve extends Curve {
    public function new(v0:Vector2, v1:Vector2, v2:Vector2, v3:Vector2) : Void;
}
