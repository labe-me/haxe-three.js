package js.three;

@:native("THREE.MorphAnimMesh")
extern class MorphAnimMesh extends Mesh {
    public var duration : Float; // 1000 (millis)
    public var mirroredLoop : Bool; // false
    public var time : Float; // 0
    public function updateAnimation(delta:Float) : Void;
}
