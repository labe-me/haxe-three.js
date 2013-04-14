package js.three;

@:native("THREE.DirectionalLight")
extern class DirectionalLight extends Light {
    public var target : Object3D;
    public var intensity : Float; // 1
    // public var castShadow : Bool; // false
    public var onlyShadow : Bool; // false

    public var shadowCameraNear : Float; // 50
    public var shadowCameraFar : Float; // 5000
    public var shadowCameraLeft : Float; // -500
    public var shadowCameraRight : Float; // 500
    public var shadowCameraTop : Float; // 500
    public var shadowCameraBottom : Float; // -500
    public var shadowCameraVisible : Bool; // false
    public var shadowBias : Float; // 0
    public var shadowDarkness : Float; // 0.5
    public var shadowMapWidth : Float; // 512
    public var shadowMapHeight : Float; // 512

    public var shadowCascade : Bool; // false
    public var shadowCascadeOffset : Vector3; // (0,0,-1000)
    public var shadowCascadeCount : Int; // 2
    public var shadowCascadeBias : Array<Float>; // [0,0,0]
    public var shadowCascadeWidth : Array<Int>; // [512,512,512]
    public var shadowCascadeHeight : Array<Int>; // [512,512,512]
    public var shadowCascadeNearZ : Array<Float>; // [-1.000, 0.990, 0.998]
    public var shadowCascadeFarZ : Array<Float>; // [0.990, 0.998, 1.000]
    public var shadowCascadeArray : Array<Dynamic>; // ???

    public var shadowMap : Dynamic; // ???
    public var shadowMapSize : Dynamic; // ???
    public var shadowCamera : Dynamic; // ???
    public var shadowMatrix : Dynamic; // ???

    public function new(hex:Int, ?intensity:Float) : Void;
    // override public function clone() : DirectionalLight;
}
