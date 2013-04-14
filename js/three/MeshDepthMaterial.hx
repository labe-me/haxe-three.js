package js.three;

@:native("THREE.MeshDepthMaterial")
extern class MeshDepthMaterial extends Material {
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public function new(?parameters:Dynamic) : Void;
}
