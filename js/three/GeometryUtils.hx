package js.three;

@:native("THREE.GeometryUtils")
extern class GeometryUtils {
    @:overload(function(geometry:Geometry, geometry2:Geometry) : Void {})
    public static function merge(geometry:Geometry, mesh:Mesh) : Void;
    public static function clone(geometry:Geometry) : Geometry;
    public static function randomPointInTriangle(vectorA:Vector3, vectorB:Vector3, vectorC:Vector3) : Vector3;
    // face : Face3 | Face4
    public static function randomPointInFace(face:Dynamic, geometry:Geometry, useCachedAreas:Bool) : Vector3;
    public static function randomPointsInGeometry(geometry:Geometry, n:Int) : Array<Vector3>;
    public static function triangleArea(vectorA:Vector3, vectorB:Vector3, vectorC:Vector3) : Float;
    public static function center(geometry:Geometry) : Void;
    public static function normalizeUVs(geometry:Geometry) : Void;
}
