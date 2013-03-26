package js.three;

@:native("THREE.Clock")
extern class Clock {
    public var autoStart : Bool;
    public var startTime : Float;
    public var oldTime : Float;
    public var elapsedTime : Float;
    public var running : Bool;
    public function new(autoStart:Bool=true) : Void;
    public function start() : Void;
    public function stop() : Void;
    public function getElapsedTime() : Float;
    public function getDelta() : Float;
}
