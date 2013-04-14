package js.three;

@:native("THREE.LineCurve")
extern class LineCurve extends Curve {
    public var v1 : Vector2;
    public var v2 : Vector2;
    public function new(v1:Vector2, v2:Vector2) : Void;
}
