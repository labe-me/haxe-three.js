package js.three;

@:native("THREE.Path")
extern class Path extends CurvePath {
    public function new(?points:Array<Vector2>) : Void;
    public function fromPoints(points:Array<Vector2>) : Void;
    public function moveTo(x:Float, y:Float) : Void;
    public function lineTo(x:Float, y:Float) : Void;
    public function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float) : Void;
    public function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float) : Void;
    public function splineThru(pts:Array<Vector2>) : Void;
    public function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
    public function absarc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
    public function ellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
    public function absellipse(aX:Float, aY:Float, xRadius:Float, yRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
    // override public function getSpacedPoints(?divisions:Int, closePath:Bool) : Array<Vector2>;
    // override public function getPoints(?divisions:Int, closePath:Bool) : Array<Vector2>;
    public function debug(canvas:js.html.Element) : Void;
    public function toShapes() : Array<Shape>;
}
