package js.three;

@:native("THREE.Sprite")
extern class Sprite extends Object3D {
    public var rotation3d : Float; // this.rotation
    public var opacity : Float; // 1
    public var uvOffset : Vector2; // (0,0)
    public var uvScale : Vector2; // (1,1)
    public function new(?material:Material) : Void;
    // override public function updateMatrix() : Void
    // override public function clone(?object:Sprite) : Sprite;
}
