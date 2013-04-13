package js.three;

// in fact does not extends Material... empty class
@:native("THREE.MeshFaceMaterial")
extern class MeshFaceMaterial extends Material {
    public var materials : Array<Material>;
    public function new(?materials:Array<Material>) : Void;
}
