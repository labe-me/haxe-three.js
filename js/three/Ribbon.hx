package js.three;

@:native("THREE.Ribbon")
extern class Ribbon extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public function new(geometry:Geometry, material:Material) : Void;
    // override public function clone(?object:Ribbon) : Ribbon;
}
