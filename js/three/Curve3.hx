package js.three;

// This class doesn't exist in ThreeJS, but it is useful to define
// so that 3D curve classes can inherit its method signatures.

extern class Curve3 extends Curve {
    public function new() : Void;
    @:overload(function(t:Float) : Vector3 {})
    override public function getPoint(t:Float) : Vector2;
    @:overload(function(u:Float) : Vector3 {})
    override public function getPointAt(u:Float) : Vector2;
    @:overload(function(divisions:Int) : Array<Vector3> {})
    override public function getPoints(divisions:Int) : Array<Vector2>;
    @:overload(function(divisions:Int) : Array<Vector3> {})
    override public function getSpacedPoints(divisions:Int) : Array<Vector2>;
    @:overload(function(t:Float) : Vector3 {})
    override public function getNormalVector(t:Float) : Vector2;
    @:overload(function(t:Float) : Vector3 {})
    override public function getTangent(t:Float) : Vector2;
    @:overload(function(u:Float) : Vector3 {})
    override public function getTangentAt(u:Float) : Vector2;
}
