package js.three;

@:native("THREE.ShapeGeometry")
extern class ShapeGeometry extends Geometry {
    public function new(shapes:Array<Shape>, options:Dynamic) : Void;
}
