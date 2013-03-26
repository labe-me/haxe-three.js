package js.three;

@:native("THREE.Vector4")
extern class Vector4 {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
    public function set(x:Float, y:Float, z:Float, w:Float) : Void;
    public function copy(v:Vector4) : Vector4;
    public function clone() : Vector4;
    public function add(v1:Vector4, v2:Vector4) : Vector4;
    public function addSelf(v:Vector4) : Vector4;
    public function sub(v1:Vector4, v2:Vector4) : Vector4;
    public function subSelf(v:Vector4) : Vector4;
    public function multiplyScalar(s:Float) : Vector4;
    public function divideScalar(s:Float) : Vector4;
    public function negate() : Vector4;
    public function dot(v:Vector4) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Vector4;
    public function setLength(s:Float) : Vector4;
    public function lerpSelf(v:Vector4, alpha:Float) : Vector4;
}
