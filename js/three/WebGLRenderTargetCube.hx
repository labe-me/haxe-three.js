package js.three;

@:native("THREE.WebGLRenderTargetCube")
extern class WebGLRenderTargetCube extends WebGLRenderTarget {
    var activeCubeFace : Int; // PX 0, NX 1, PY 2, NY 3, PZ 4, NZ 5
    public function new(width:Float, height:Float, ?options:Dynamic) : Void;
}
