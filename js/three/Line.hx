package js.three;

@:native("THREE.Line")
extern class Line extends Object3D {
    public var geometry : Geometry;
    public var materials : Material;
    public var type : Int; // LineType.Strip
    public function new(geometry:Geometry, material:Material, ?type:Int) : Void;
}

class LineType {
    public static inline var Strip = 0;
    public static inline var Pieces = 1;
}
