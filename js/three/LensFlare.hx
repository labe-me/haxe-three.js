package js.three;

@:native("THREE.LensFlare")
extern class LensFlare extends Object3D {
    public var lensFlares : Array<Dynamic>;
    public var positionScreen : Vector3;
    public var customUpdateCallback : Void->Void;
    public function new(texture:Texture, ?size:Float, ?distance:Float, ?blending:Int, color:Color) : Void;
    // override public function add(texture:Texture, ?size:Float, ?distance:Float, ?blending:Int, color:Color) : Void; // TODO
    public function updateLensFlares() : Void;
}
