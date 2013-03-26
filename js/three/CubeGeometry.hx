package js.three;

typedef CubeGeometrySides = {
    px:Bool,
    nx:Bool,
    py:Bool,
    ny:Bool,
    pz:Bool,
    nz:Bool
};

@:native("THREE.CubeGeometry")
extern class CubeGeometry extends Geometry {
    var sides : CubeGeometrySides;
    @:overload(function(width:Float, height:Float, depth:Float, ?segmentsWidth:Float, ?segmentsHeight:Float, ?segmentsDepth:Float, ?material:Material, ?sides:CubeGeometrySides) : Void {})
    public function new(width:Float, height:Float, depth:Float, ?segmentsWidth:Float, ?segmentsHeight:Float, ?segmentsDepth:Float, ?materials:Array<Material>, ?sides:CubeGeometrySides) : Void;
}
