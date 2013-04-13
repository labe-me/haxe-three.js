package js.three;

@:native("THREE.CombinedCamera")
extern class CombinedCamera extends Camera {
    public var fov : Float;
    public var left : Float;
    public var right : Float;
    public var top : Float;
    public var bottom : Float;
    public var cameraO : OrthographicCamera;
    public var cameraP : PerspectiveCamera;
    public var zoom : Float;
    public var near : Float;
    public var far : Float;
    public var inPersepectiveMode : Bool;
    public var inOrthographicMode : Bool;
    public function new(width:Float, height:Float, fov:Float, near:Float, far:Float, orthoNear:Float, orthoFar:Float) : Void;
    public function toPerspective() : Void;
    public function toOrthographic() : Void;
    public function setSize(width:Float, height:Float) : Void;
    public function setFov(fov:Float) : Void;
    public function updateProjectionMatrix() : Void;
    public function setLens(focalLength:Float, frameHeight:Float) : Float;
    public function setZoom(zoom:Float) : Void;
    public function toFrontView() : Void;
    public function toBackView() : Void;
    public function toLeftView() : Void;
    public function toRightView() : Void;
    public function toTopView() : Void;
    public function toBottomView() : Void;
}
