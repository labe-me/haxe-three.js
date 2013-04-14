package js.three;

@:native("THREE.Ray")
extern class Ray {
    public var origin : Vector3;
    public var direction : Vector3;
    public function new(?origin:Vector3, ?direction:Vector3) : Void;
    public function set(origin:Vector3, direction:Vector3) : Ray; // this
    public function copy(ray:Ray) : Ray; // this
    public function at(t:Float, ?optionalTarget:Ray) : Ray;
    public function recast(t:Float) : Ray; // this
    public function closestPointToPoint(point:Vector3, ?optionalTarget:Vector3) : Vector3;
    public function distanceToPoint(point:Vector3) : Float;
    public function isIntersectionSphere(sphere:Sphere) : Bool;
    public function isIntersectionPlane(plane:Plane) : Bool;
    public function distanceToPlane(plane:Plane) : Float;
    public function intersectPlane(plane:Plane, ?optionalTarget:Vector3) : Dynamic; // Vector3 or undefined
    public function applyMatrix4(matrix4:Matrix4) : Ray; // this
    public function equals(ray:Ray) : Bool;
    public function clone() : Ray;
}
