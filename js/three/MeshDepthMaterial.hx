package js.three;

@:native("THREE.MeshDepthMaterial")
extern class MeshDepthMaterial extends Material {
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  opacity: <float>,

     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,

     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
