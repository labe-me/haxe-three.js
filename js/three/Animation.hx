package js.three;

@:native("THREE.Animation")
extern class Animation {
    public var root : Mesh;
    public var data : Dynamic; // TODO: find a type for THREE.AnimationHandler.get(data)
    public var hierarchy : Array<Bone>; // TODO: ensure type
    public var currentTime : Float; // 0
    public var timeScale : Float; // 1
    public var isPlaying : Bool; // false
    public var isPaused : Bool; // true
    public var loop : Bool; // true
    public var interpolationType : Int; // AnimationHandler.LINEAR
    public var points : Array<Array<Float>>;
    public var target : Vector3;
    public function new(root:Mesh, name:String, ?interpoltionType:Int) : Void;
    public function play(loop:Bool, startTimeMS:Float) : Void;
    public function pause() : Void;
    public function stop() : Void;
    public function update(deltaTimeMS: Float) : Void;
}
