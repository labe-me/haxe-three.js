package js.three;

@:native("THREE.Line3")
extern class Line3 {
    public var start : Vector3;
    public var end : Vector3;
    public function new(?start:Vector3, ?end:Vector3) : Void;
    public function set(start:Vector3, end:Vector3) : Line3; // this
    public function copy(line:Line3) : Line3; // this
    public function center(?optionalTarget:Vector3) : Vector3;
    public function delta(?optionalTarget:Vector3) : Vector3;
    public function distanceSq() : Float;
    public function distance() : Float;
    public function at(t:Float, ?optionalTarget:Vector3) : Vector3;
    public function closestPointToPointParameter(point:Vector3, ?clampToLine:Line3) : Vector3;
    public function closestPointToPoint(point:Vector3, ?clampToLine:Line3, ?optionalTarget:Vector3) : Vector3;
    public function applyMatrix4(matrix:Matrix4) : Line3; // this
    public function equals(line:Line3) : Bool;
    public function clone() : Line3;
}
