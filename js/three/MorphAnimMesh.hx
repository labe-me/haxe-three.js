package js.three;

@:native("THREE.MorphAnimMesh")
extern class MorphAnimMesh extends Mesh {
    public var duration : Float; // 1000 (milliseconds)
    public var mirroredLoop : Bool; // false
    public var time : Float; // 0
    public function setFrameRange(start:Int, end:Int) : Void;
    public function setDirectionForward() : Void;
    public function setDirectionBackward() : Void;
    public function parseAnimations() : Void;
    public function setAnimationLabel(label:String, start:Int, end:Int) : Void;
    public function playAnimation(label:String, fps:Float) : Void;
    public function updateAnimation(delta:Float) : Void;
    // override public function clone(?object:MorphAnimMesh) : MorphAnimMesh;
}
