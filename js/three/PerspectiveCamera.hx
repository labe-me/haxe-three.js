package js.three;

@:native("THREE.PerspectiveCamera")
extern class PerspectiveCamera extends Camera {
    public var fov : Float; // 50
    public var aspect : Float; // 1
    public var near : Float; // 0.1
    public var far : Float; // 2000
    // set by setViewOffset
    public var fullWidth : Float;
    public var fullHeight : Float;
    public var x : Float;
    public var y : Float;
    public var width : Float;
    public var height : Float;
    public function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float) : Void;
    public function setLens(focalLength:Float, ?frameSize:Float) : Void;
    public function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float) : Void;
    public function updateProjectionMatrix() : Void;
}
