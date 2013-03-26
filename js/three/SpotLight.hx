package js.three;

@:native("THREE.SpotLight")
extern class SpotLight extends Light {
    public var intensity : Float; // 1
    public var target : Object3D;
    public var distance : Float; // 0
    public function new(hexColor:Int, ?intensity:Float, ?distance:Float, ?castShadow:Bool) : Void;
}
