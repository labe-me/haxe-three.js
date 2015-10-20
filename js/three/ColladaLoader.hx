package js.three;

typedef ProgressEvent = { total: String, loaded: Int };

@:native("THREE.ColladaLoader")
extern class ColladaLoader {
    public function new():Void;
    function load ( url:String, ?readyCallback:Dynamic->Void, ?progressCallback:ProgressEvent->Void ):Void;
}
