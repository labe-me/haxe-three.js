package js.three;

@:native("THREE.Spline")
extern class Spline {
    public var points : Array<{x:Float, y:Float, z:Float}>;
    public function new(points:Array<Float>) : Void;
    public function initFromArray(a:Array<Array<Float>>) : Void;
    public function getPoint(k:Float) : {x:Float, y:Float, z:Float};
    public function getControlPointsArray() : Array<Array<Float>>;
    public function getLength(?nSubDivisions:Int) : { chunks:Array<Float>, total:Float };
    public function reparametrizeByArcLength(samplingCoef:Float) : Void;
    public function interpolate(p0:Float, p1:Float, p2:Float, p4:Float, t:Float, t2:Float, t3:Float) : Float;
}
