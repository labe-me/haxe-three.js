package js.three;

@:native("THREE.OrthographicCamera")
extern class OrthographicCamera extends Camera {
    public function new(left:Float, right:Float, top:Float, bottom:Float, ?near:Float, ?far:Float) : Void;
    public var left : Float;
    public var right : Float;
    public var top : Float;
    public var bottom : Float;
    public var near : Float;
    public var far : Float;
    public function updateProjectionMatrix() : Void;
}
