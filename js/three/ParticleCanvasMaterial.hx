package js.three;

@:native("THREE.ParticleCanvasMaterial")
extern class ParticleCanvasMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var program : Dynamic->Color->Void;
    /**
     * @author mr.doob / http://mrdoob.com/
     *
     * parameters = {
     *  color: <hex>,
     *  program: <function>(context, color),
     *  opacity: <float>,
     *  blending: THREE.NormalBlending
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
