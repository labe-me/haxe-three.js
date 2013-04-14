package js.three;

@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry {
    public function new(points:Array<Vector3>, ?segments:Int, ?phiStart:Float, ?phiLength:Float) : Void;
}
