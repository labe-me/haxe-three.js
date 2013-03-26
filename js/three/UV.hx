package js.three;

@:native("THREE.UV")
extern class UV {
    public var u : Float;
    public var v : Float;
    public function new(?u:Float, ?v:Float) : Void;
    public function set(u:Float, v:Float) : UV;
    public function copy(uv:UV) : UV;
    public function clone() : UV;
}
