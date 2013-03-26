package js.three;

@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material {
    public var color : Color; // new Color(parameters.color) || new Color(0xffffff)
    public var linewidth : Float; // 1
    public var linecap : String; // 'round'
    public var linejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var fog : Bool; // true
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  color: <hex>,
     *  opacity: <float>,
     *
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  linewidth: <float>,
     *  linecap: "round",
     *  linejoin: "round",
     *
     *  vertexColors: <bool>
     *
     *  fog: <bool>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
