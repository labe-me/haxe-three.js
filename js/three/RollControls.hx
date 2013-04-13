package js.three;

@:native("THREE.RollControls")
extern class RollControls {
    public var object : Object3D;
    public var domElement : js.html.Element;
    public var mouseLook : Bool; // true
    public var autoForward : Bool; // false
    public var lookSpeed : Float; // 1
    public var movementSpeed : Float; // 1
    public var rollSpeed : Float; // 1
    public var constrainVertical : Array<Float>; // [-0.9, 0.9]
    public function new(object:Object3D, ?domElement:js.html.Element) : Void;
    public function update(delta:Float) : Void;
    public function translateX(distance:Float) : Void;
    public function translateY(distance:Float) : Void;
    public function translateZ(distance:Float) : Void;
    public function rotateHorizontally(amount:Float) : Void;
    public function rotateVertically(amount:Float) : Void;
}
