package js.three;

@:native("THREE.LOD")
extern class LOD extends Object3D {
    public var LODs : Array<{ visibleAtDistance:Float, object3D:Object3D }>;
    public function addLevel(o:Object3D, ?visibleAtDistance:Float=0.0) : Void;
    public function update(camera:Camera) : Void;
    // public function clone() : LOD;
}
