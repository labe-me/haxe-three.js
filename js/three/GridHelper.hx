package js.three;

@:native("THREE.GridHelper")
extern class GridHelper extends Line {
    public function new(size:Int, step:Int) : Void;
	public function setColors(firstColor:Int, secondColor:Int):Void;
}
