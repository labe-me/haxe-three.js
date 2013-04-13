package js.three;

@:native("THREE.PathControls")
extern class PathControls {
    public var object : Object3D;
    public var domElement : js.html.Element;
    public var id : String;
    public var duration : Int; // 10*1000 millis
    public var waypoints : Array<Mesh>;
    public var useConstantSpeed : Bool; // true
    public var resamplingCoef : Float; // 50
    public var debugPath : Object3D;
    public var debugDummy : Object3D;
    public var animationParent : Object3D;
    public var lookSpeed : Float; // 0.005
    public var lookVertical : Bool; // true
    public var lookHorizontal : Bool; // true
    public var verticalAngleMap : { srcRange:Array<Float>, dstRange:Array<Float> };
    public var horizontalAngleMap : { srcRange:Array<Float>, dstRange:Array<Float> };
    public function new(object:Object3D, ?domElement:js.html.Element) : Void;
    public function init() : Void;
    public function update(delta:Float) : Void;
}
