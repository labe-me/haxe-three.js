package js.three;

@:native("THREE.PolyhedronGeometry")
extern class PolyhedronGeometry extends Geometry {
    public function new(vertices:Array<Array<Float>>, faces:Array<Array<Int>>, ?radius:Float, ?detail:Int) : Void;
}
