package js.three;

@:native("THREE.JSONLoader")
extern class JSONLoader extends Loader {
    public function new(?showStatus:Bool) : Void;
    public function load(url:String, resultCallback:Geometry->Material->Void, ?texturePath:String) : Void;
}
