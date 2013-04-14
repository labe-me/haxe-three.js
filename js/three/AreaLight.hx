package js.three;

@:native("THREE.AreaLight")
extern class AreaLight extends Light {
    public var normal : Vector3; // (0,-1,0)
    public var right : Vector3; // (1,0,0)
    public var intensity : Float; // 1
    public var width : Float; // 1.0
    public var height : Float; // 1.0
    public var constantAttenuation : Float; // 1.5
    public var linearAttenuation : Float; // 0.5
    public var quadraticAttenuation : Float; // 0.1
    public function new(hex:Int, ?intensity:Float) : Void;
}
