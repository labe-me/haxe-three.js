package js.three;

@:native("THREE.CurvePath")
extern class CurvePath extends Curve {
    public var curves : Array<Curve>;
    public var bends : Array<Path>;
    public var autoClose : Bool; // false
    public function new() : Void;
    public function add(curve:Curve) : Void;
    public function checkConnection() : Void;
    public function closePath() : Void;
    // override public function getPoint(t:Float) : Vector3;
    // override public function getLength() : Float;
    public function getCurveLengths() : Array<Float>;
    public function getBoundingBox() : { minX:Float, minY:Float, maxX:Float, maxY:Float, centroid:Vector2 };
    // TODO: If any curves are 3D, getBoundingBox will also return minZ and maxZ, and centroid will be Vector3

    public function createPointsGeometry(divisions:Int) : Geometry;
    public function createSpacedPointsGeometry(divisions:Int) : Geometry;
    public function createGeometry(points:Array<Vector2>) : Geometry; // TODO: Array can have Vector3, or both 2 and 3

    public function addWrapPath(bendpath:Path) : Void;
    public function getTransformedPoints(segments:Int, bends:Array<Path>) : Array<Vector2>;
    public function getTransformedSpacedPoints(segments:Int, bends:Array<Path>) : Array<Vector2>;
    public function getWrapPoints(oldPts:Array<Vector2>, path:Path) : Array<Vector2>;
}
