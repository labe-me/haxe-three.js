package js.three;

@:native("THREE.ConvexGeometry")
extern class ConvexGeometry extends Geometry {
    public function new(vertices:Array<Vector3>) : Void;
}
