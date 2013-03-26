package js.three;

@:native("THREE.MeshNormalMaterial")
extern class MeshNormalMaterial extends Material {
    public var shading : Int; // Shading.Flat
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    /**
     * @author mr.doob / http://mrdoob.com/
     *
     * parameters = {
     *  opacity: <float>,

     *  shading: THREE.FlatShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,

     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
