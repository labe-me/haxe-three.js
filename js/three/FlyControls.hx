package js.three;

@:native("THREE.FlyControls")
extern class FlyControls {
    public var object : Object3D;
    public var domElement : js.Dom.HtmlDom;
    public var movementSpeed : Float; // 1.0
    public var rollSpeed : Float; // 0.005
    public var dragToLook : Bool; // false
    public var autoForward : Bool; // false
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function update(delta:Float) : Void;
}
