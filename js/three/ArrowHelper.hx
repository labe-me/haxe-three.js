package js.three;

@:native("THREE.ArrowHelper")
extern class ArrowHelper extends Object3D {
    public function new(dir:Vector3, origin:Vector3, ?length:Float, hex:Int) : Void;
    public function setDirection(dir:Vector3) : Void;
    public function setLength(length:Float) : Void;
    public function setColor(hex:Int) : Void;
}
