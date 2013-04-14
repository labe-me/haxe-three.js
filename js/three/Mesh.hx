package js.three;

@:native("THREE.Mesh")
extern class Mesh extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public function new(geometry:Geometry, ?material:Material) : Void;
    public function updateMorphTargets() : Void;
    public function getMorphTargetIndexByName(name:String) : Int;
    // override public function clone(?object:Mesh) : Mesh;
}
