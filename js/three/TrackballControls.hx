package js.three;

@:native("THREE.TrackballControls")
extern class TrackballControls {
    public var object : Object3D;
    public var domElement : js.html.Element;
    public var enabled : Bool;
    public var screen : { width:Int, height:Int, offsetLeft:Int, offsetTop:Int };
    public var radius : Float;
    public var rotateSpeed : Float; // 1
    public var zoomSpeed : Float; // 1.2
    public var panSpeed : Float; // 0.3
    public var noRotate : Bool; // false
    public var noZoom : Bool; // false
    public var staticMoving : Bool; // false
    public var dynamicDampingFactor : Float; // 0.2
    public var minDistance : Float; // 0
    public var maxDistance : Float; // Infinity
    public var keys : Array<Int>; // [65 A, 83 S, 68 D]
    public function new(object:Object3D, ?domElement:js.html.Element) : Void;
    public function getMouseOnScreen(clientX:Int, clientY:Int) : Vector2;
    public function getMouseProjectionOnBall(clientX:Int, clientY:Int) : Vector3;
    public function update() : Void;
}
