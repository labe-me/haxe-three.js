package js.three;

typedef SplinePoint = {x:Float, y:Float, z:Float};

@:native("THREE.Spline")
extern class Spline {
    public var points : Array<SplinePoint>;
    public function new(points:Array<SplinePoint>) : Void;
    public function initFromArray(a:Array<Array<Float>>) : Void;
    public function getPoint(k:Float) : SplinePoint;
    public function getControlPointsArray() : Array<Array<Float>>;
    public function getLength(?nSubDivisions:Int) : {chunks:Array<Float>, total:Float};
    public function reparametrizeByArcLength(samplingCoef:Float) : Void;
}
