package js.three;

// This class doesn't exist in ThreeJS, but it is useful to define
// so that 3D curve classes can inherit its method signatures.

extern class Curve3 extends Curve {
    public function new() : Void;
    public function getPoint(t:Float) : Vector3;
    public function getPointAt(u:Float) : Vector3;
    public function getPoints(divisions:Int) : Array<Vector3>;
    public function getSpacedPoints(divisions:Int) : Array<Vector3>;
    public function getLength() : Float;
    public function getLengths(divisions:Int) : Array<Float>;
    public function getUtoTmapping(u:Float, ?distance:Float) : Float;
    public function getNormalVector(t:Float) : Vector3;
    public function getTangent(t:Float) : Vector3;
    public function getTangentAt(u:Float) : Vector3;
}
