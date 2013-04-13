package js.three;

@:native("THREE.LensFlare")
extern class LensFlare extends Object3D {
    public var lensFlares : Array<Dynamic>;
    public var positionScreen : Vector3;
    public var customUpdateCallback : Void->Void;
    public function new(?texture:Texture, ?size:Float, ?distance:Float, ?blending:Dynamic, ?color:Color) : Void;
    public function add(texture:Texture, ?size:Float, ?distance:Float, ?blending:Dynamic, ?color:Color, ?opacity:Float) : Void;
    public function updateLensFlares() : Void;
}
