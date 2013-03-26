package js.three;

// abstract Curve base class
@:native("THREE.Curve")
extern class Curve {
    public function new() : Void;
    public function getPoint(t:Float) : Vector2;
    public function getPointAt(u:Float) : Vector2;
    public function getPoints(divisions:Int) : Array<Vector2>;
    public function getSpacedPoints(divisions:Int) : Array<Vector2>;
    public function getLength() : Float;
    public function getLengths(divisions:Int) : Array<Float>;
    public function getUtoTmapping(u:Float, ?distance:Float) : Float;
    public function getNormalVector(t:Float) : Vector2;
    public function getTangent(t:Float) : Vector2;
    public function getTangentAt(u:Float) : Vector2;
}

@:native("THREE.LineCurve")
extern class LineCurve extends Curve {
    public var v1 : Vector2;
    public var v2 : Vector2;
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float): Void {})
    public function new(v1:Vector2, v2:Vector2) : Void;
}

@:native("THREE.QuadraticBezierCurve")
extern class QuadraticBezierCurve extends Curve {
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float) : Void {})
    public function new(v0:Vector2, v1:Vector2, v2:Vector2) : Void;
}

@:native("THREE.CubicBezierCurve")
extern class CubicBezierCurve extends Curve {
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void {})
    public function new(v0:Vector2, v1:Vector2, v2:Vector2, v4:Vector2) : Void;
}

@:native("THREE.SplineCurve")
extern class SplineCurve extends Curve {
    public function new(?points:Array<Vector2>) : Void;
}

@:native("THREE.ArcCurve")
extern class ArcCurve extends Curve {
    public function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
}

// src/extras/core/Curve.js also contains THREE.Curve.Utils

// TODO: getPoint() and cie will returns Vector3 objects for these 3D curves, we may haxe to rework the API

@:native("THREE.LineCurve3") extern class LineCurve3 extends Curve {
    public function new(v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.QuadraticBezierCurve3") extern class QuadraticBezierCurve3 extends Curve {
    public function new(v0:Vector3, v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.CubicBezierCurve3") extern class CubicBezierCurve3 extends Curve {
    public function new(v0:Vector3, v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.SplineCurve3") extern class SplineCurve3 extends Curve {
    public function new(?points:Array<Vector3>) : Void;
}
