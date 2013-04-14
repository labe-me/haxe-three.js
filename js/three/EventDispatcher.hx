package js.three;

@:native("THREE.EventDispatcher")
extern class EventDispatcher {
    public function new() : Void;
    public function addEventListener(type:String, listener:Dynamic->Void) : Void;
    public function removeEventListener(type:String, listener:Dynamic->Void) : Void;
    public function dispatchEvent(type:String) : Void;
}
