package js.three;

@:native("THREE.Light")
extern class Light extends Object3D {
    public var color : Color;
    public function new(hexColor:Int) : Void;
    // override public function clone(?light:Light) : Light;
}
