package js.three;

@:native("THREE.Rectangle")
extern class Rectangle {
    public function resize() : Void;
    public function getX() : Float;
    public function getY() : Float;
    public function getWidth() : Float;
    public function getHeight() : Float;
    public function getLeft() : Float;
    public function getTop() : Float;
    public function getRight() : Float;
    public function getBottom() : Float;
    public function set(left:Float, top:Float, right:Float, bottom:Float) : Void;
    public function addPoint(x:Float, y:Float) : Void;
    public function add3Points(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void;
    public function addRectangle(r:Rectangle) : Void;
    public function inflate(v:Float) : Void;
    public function minSelf(r:Rectangle) : Void;
    public function intersects(r:Rectangle) : Bool;
    public function empty() : Void;
    public function isEmpty() : Bool;
}
