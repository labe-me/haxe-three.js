package js.three;

@:native("THREE.ParametricGeometry")
extern class ParametricGeometry {
    public function new(func:Dynamic, slices:Int, stacks:Int, ?useTris:Bool) : Void;
}
