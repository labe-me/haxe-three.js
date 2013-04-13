package js.three;

@:native("THREE.Triangle")
extern class Triangle {
    public var a : Vector3;
    public var b : Vector3;
    public var c : Vector3;
    public function new(?a:Vector3, ?b:Vector3, ?c:Vector3) : Void;
    public static function normal(a:Vector3, b:Vector3, c:Vector3, ?optionalTarget:Vector3) : Vector3;
    public static function barycoordFromPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3, ?optionalTarget:Vector3) : Vector3;
    public static function containsPoint(point:Vector3, a:Vector3, b:Vector3, c:Vector3) : Bool;
    public function set(a:Vector3, b:Vector3, c:Vector3) : Triangle; // this
    public function setFromPointsAndIndices(Array<Vector3>, i0:Int, i1:Int, i2:Int) : Triangle; // this
    public function copy(triangle:Triangle) : Triangle; // this
    public function area() : Float;
    public function midpoint(?optionalTarget:Vector3) : Vector3;
    public function normal(?optionalTarget:Vector3) : Vector3;
    public function plane(?optionalTarget:Plane) : Plane;
    public function barycoordFromPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function containsPoint(point:Vector3) : Bool;
    public function equals(triangle:Triangle) : Bool;
    public function clone() : Triangle;
}
