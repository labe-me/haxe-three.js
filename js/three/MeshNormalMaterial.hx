package js.three;

@:native("THREE.MeshNormalMaterial")
extern class MeshNormalMaterial extends Material {
    public var shading : Int; // FlatShading
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public function new(?parameters:Dynamic) : Void;
}
