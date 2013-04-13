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

// src/extras/core/Curve.js also contains THREE.Curve.Utils