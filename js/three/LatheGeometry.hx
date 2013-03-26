package js.three;

@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry {
    public var steps : Int;
    public var angle : Float;
    public function new(points:Array<Vector3>, ?steps:Int, ?angle:Float) : Void;
}
