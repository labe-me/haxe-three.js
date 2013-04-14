package js.three;

@:native("THREE.Shape")
extern class Shape extends Path {
    public var holes : Array<Vector2>;
    public function new() : Void;
    public function extrude(options:Dynamic) : ExtrudeGeometry;
    public function makeGeometry(options:Dynamic) : ShapeGeometry;
    public function getPointsHoles(divisions:Int) : Array<Vector2>;
    public function getSpacedPointsHoles(divisions:Int) : Array<Vector2>;
    public function extractAllPoints(divisions:Int) : { shape:Array<Vector2>, holes:Array<Vector2> };
    public function extractPoints(divisions:Int) : { shape:Array<Vector2>, holes:Array<Vector2> };
    public function extractAllSpacedPoints(divisions:Int) : { shape:Array<Vector2>, holes:Array<Vector2> };
}

// src/extras/core/Shape.js also contains THREE.Shape.Utils
