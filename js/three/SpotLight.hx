package js.three;

@:native("THREE.SpotLight")
extern class SpotLight extends Light {
    public var intensity : Float; // 1
    public var target : Object3D;
    public var distance : Float; // 0
    public var angle : Float; // Math.PI / 2
    public var exponent : Float; // 10

    // public var castShadow : Bool; // false
    public var onlyShadow : Bool; // false

    public var shadowCameraNear : Float; // 50
    public var shadowCameraFar : Float; // 5000
    public var shadowCameraFov : Float; // 50
    public var shadowCameraVisible : Bool; // false
    public var shadowBias : Float; // 0
    public var shadowDarkness : Float; // 0.5
    public var shadowMapWidth : Float; // 512
    public var shadowMapHeight : Float; // 512

    public var shadowMap : Dynamic; // ???
    public var shadowMapSize : Dynamic; // ???
    public var shadowCamera : Dynamic; // ???
    public var shadowMatrix : Dynamic; // ???

    public function new(hexColor:Int, ?intensity:Float, ?distance:Float, ?castShadow:Bool) : Void;
}
