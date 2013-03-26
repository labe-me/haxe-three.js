package js.three;

@:native("THREE.TextPath")
extern class TextPath extends Path {
    public var parameters : Dynamic;
    public function new(text:String, ?parameters:Dynamic) : Void;
    public function set(text:String, parameters:Dynamic) : Void;
}
