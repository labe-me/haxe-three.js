package js.three;

@:native("THREE.MorphBlendMesh")
extern class MorphBlendMesh extends Mesh {
    public function new(geometry:Geometry, material:Material) : Void;
    public function createAnimation(name:String, start:Int, end:Int, fps:Float) : Void;
    public function autoCreateAnimations(fps:Float) : Void;
    public function setAnimationDirectionForward(name:String) : Void;
    public function setAnimationDirectionBackward(name:String) : Void;
    public function setAnimationFPS(name:String, fps:Float) : Void;
    public function setAnimationDuration(name:String, duration:Float) : Void;
    public function setAnimationWeight(name:String, weight:Float) : Void;
    public function setAnimationTime(name:String, time:Float) : Void;
    public function getAnimationTime(name:String) : Float;
    public function getAnimationDuration(name:String) : Float;
    public function playAnimation(name:String) : Void;
    public function stopAnimation(name:String) : Void;
    public function update(delta:Float) : Void;
}
