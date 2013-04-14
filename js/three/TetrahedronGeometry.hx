package js.three;

@:native("THREE.TetrahedronGeometry")
extern class TetrahedronGeometry extends PolyhedronGeometry {
    public function new(radius:Float, ?detail:Int) : Void;
}
