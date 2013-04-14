package js.three;

@:native("THREE.Bone")
extern class Bone extends Object3D {
    public var skin : Bool; // belongToSkin
    public var skinMatrix : Matrix4;
    public function new(belongToSkin:Bool) : Void;
    public function update(parentSkinMatrix:Matrix4, ?forceUpdate:Bool) : Void;
}
