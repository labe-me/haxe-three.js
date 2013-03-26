package js.three;

@:native("THREE.Vector2")
extern class Vector2 {
    public var x : Float;
    public var y : Float;
    public function new(?x:Float, ?y:Float) : Void;
    public function set(x:Float, y:Float) : Vector2;
    public function copy(v:Vector2) : Vector2;
    public function clone() : Vector2;
    public function add(v1:Vector2, v2:Vector2) : Vector2;
    public function addSelf(v:Vector2) : Vector2;
    public function sub(v1:Vector2, v2:Vector2) : Vector2;
    public function subSelf(v:Vector2) : Vector2;
    public function multiplyScalar(s:Float) : Vector2;
    public function divideScalar(s:Float) : Vector2;
    public function negate() : Vector2;
    public function dot(v:Vector2) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Vector2;
    public function distanceTo(v:Vector2) : Float;
    public function distanceToSquared(v:Vector2) : Float;
    public function setLength(l:Float) : Float;
    public function equals(v:Vector2) : Bool;
}
