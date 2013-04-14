package js.three;

@:native("THREE.OctahedronGeometry")
extern class OctahedronGeometry extends PolyhedronGeometry {
    public function new(radius:Float, ?detail:Int) : Void;
}
