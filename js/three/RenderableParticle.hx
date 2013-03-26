package js.three;

@:native("THREE.RenderableParticle") extern class RenderableParticle {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var rotation : Dynamic; // TODO
    public var scale : Vector2;
    public var material : Material;
    public function new() : Void;
}
