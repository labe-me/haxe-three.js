package js.three;

@:native("THREE.Vector2")
extern class Vector2 {
    public var x : Float; // 0
    public var y : Float; // 0
    public function new(?x:Float, ?y:Float) : Void;
    public function set(x:Float, y:Float) : Vector2; // this
    public function setX(x:Float) : Vector2; // this
    public function setY(y:Float) : Vector2; // this
    public function setComponent(index:Int, value:Float) : Void;
    public function getComponent(index:Int) : Float;
    public function copy(v:Vector2) : Vector2; // this
    public function add(v:Vector2) : Vector2; // this
    public function addVectors(a:Vector2, b:Vector2) : Vector2; // this
    public function addScalar(s:Float) : Vector2; // this
    public function sub(v:Vector2) : Vector2; // this
    public function subVectors(a:Vector2, b:Vector2) : Vector2; // this
    public function multiplyScalar(s:Float) : Vector2; // this
    public function divideScalar(s:Float) : Vector2; // this
    public function min(v:Vector2) : Vector2; // this
    public function max(v:Vector2) : Vector2; // this
    public function clamp(min:Vector2, max:Vector2) : Vector2; // this
    public function negate() : Vector2; // this
    public function dot(v:Vector2) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Vector2; // this
    public function distanceTo(v:Vector2) : Float;
    public function distanceToSquared(v:Vector2) : Float;
    public function setLength(l:Float) : Vector2; // this
    public function lerp(v:Vector2, alpha:Float) : Vector2; // this
    public function equals(v:Vector2) : Bool;
    public function toArray() : Array<Float>; // [x,y]
    public function clone() : Vector2;
}
