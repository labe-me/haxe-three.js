package js.three;

@:native("THREE.Line")
extern class Line extends Object3D {
    public var geometry : Geometry;
    public var materials : Material;
    public var type : Int; // LineStrip
    public function new(geometry:Geometry, ?material:Material, ?type:Int) : Void;
    // override public function clone(?object:Line) : Line;
}
