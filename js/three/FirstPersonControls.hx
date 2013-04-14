package js.three;

// TODO: Test this
@:native("THREE.FirstPersonControls")
extern class FirstPersonControls {
    public var object : Object3D;
    public var target : Vector3;
    public var domElement : js.html.Element;
    public var movementSpeed : Float; // 1.0
    public var lookSpeed : Float; // 0.005
    public var noFly : Bool; // false
    public var lookVertical : Bool; // true
    public var autoForward : Bool; // false
    public var activeLook : Bool; // true
    public var heightSpeed : Bool; // false;
    public var heightCoef : Float; // 1.0
    public var heightMin : Float; // 0.0
    public var constrainVertical : Bool; // false
    public var verticalMin : Float; // 0
    public var verticalMax : Float; // Math.PI
    public var autoSpeedFactor : Float; // 0
    // these variables should be manipulated but you can try things :)
    public var mouseX : Float;
    public var mouseY : Float;
    public var lat : Float;
    public var lon : Float;
    public var phi : Float;
    public var theta : Float;
    public var moveForward : Bool;
    public var moveBackward : Bool;
    public var moveLeft : Bool;
    public var moveRight : Bool;
    public var freeze : Bool;
    public var mouseDragOn : Bool;
    public function new(object:Object3D, ?domElement:js.html.Element) : Void;
    public function update(delta:Float) : Void;
}
