package js.three;

@:native("THREE.KeyFrameAnimation")
extern class KeyFrameAnimation {
    public var root : Dynamic; // TODO (Mesh?)
    public var data : Dynamic; // AnimationHandler.get(data)
    public var hierarchy : Array<Dynamic>; // AnimationHandler.parse(root)
    public var currentTime : Float; // 0
    public var timeScale : Float; // 0.001
    public var isPlaying : Bool; // false
    public var isPaused : Bool;
    public var loop : Bool; // true
    public var JITCompile : Bool; // true
    public function new(root:Dynamic, data:Dynamic, ?jitCompile:Bool) : Void;
    public function play(?loop:Bool, ?startTimeMS:Float) : Void;
    public function pause() : Void;
    public function stop() : Void;
    public function update(deltaTimeMS:Float) : Void;
}
