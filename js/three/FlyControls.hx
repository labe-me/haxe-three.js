package js.three;

@:native("THREE.FlyControls")
extern class FlyControls {
    public var object : Object3D;
    public var domElement : js.html.Element;
    public var movementSpeed : Float; // 1.0
    public var rollSpeed : Float; // 0.005
    public var dragToLook : Bool; // false
    public var autoForward : Bool; // false
    public function new(object:Object3D, ?domElement:js.html.Element) : Void;
    public function update(delta:Float) : Void;
}
