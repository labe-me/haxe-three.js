package js.three;

@:native("THREE.SubdivisionModifier")
extern class SubdivisionModifier {
    public var subdivisions : Int;
    public var useOldVertexColors : Bool;
    public var supportUVs : Bool;
    public function new(?subdivisions:Int) : Void;
    public function modify(geometry:Geometry) : Void;
    public function smooth(geometry:Geometry) : Void;
}
