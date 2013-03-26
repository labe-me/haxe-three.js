package js.three;

@:native("THREE.ParticleDOMMaterial")
extern class ParticleDOMMaterial extends Material {
    public var domElement : js.Dom.HtmlDom;
    public function new(el:js.Dom.HtmlDom) : Void;
}
