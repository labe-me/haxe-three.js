package js.three;

@:native("THREE.MeshLambertMaterial")
extern class MeshLambertMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var ambient : Color; // new Color(parameters.color) | new Color(0x050505)
    public var wrapAround : Bool; // false
    public var wrapRGB : Vector3; // (1,1,1)
    public var map : Texture;
    public var lightMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // Operation.Multiply
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  color: <hex>,
     *  ambient: <hex>,
     *  opacity: <float>,
     *
     *  map: new THREE.Texture( <Image> ),
     *
     *  lightMap: new THREE.Texture( <Image> ),
     *
     *  envMap: new THREE.TextureCube( [posx, negx, posy, negy, posz, negz] ),
     *  combine: THREE.Multiply,
     *  reflectivity: <float>,
     *  refractionRatio: <float>,
     *
     *  shading: THREE.SmoothShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>,
     *
     *  vertexColors: false / THREE.VertexColors / THREE.FaceColors,
     *  skinning: <bool>,
     *
     *      fog: <bool>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
