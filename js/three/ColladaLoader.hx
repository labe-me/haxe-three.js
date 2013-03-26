package js.three;

// TODO: Complete Collada manipulation API
typedef ColladaData = {
    scene : Dynamic,
    morphs : Dynamic,
    skins : Dynamic,
    dae : {
        image : Dynamic,
        materials : Dynamic,
        effects : Dynamic,
        geometries : Dynamic,
        controllers : Dynamic,
        animations : Dynamic,
        visualScenes : Dynamic,
        scene : Dynamic,
    }
};

@:native("THREE.ColladaLoader")
extern class ColladaLoader {
    public function new() : Void;
    public function load(url:String, readyCallback:ColladaData->Void) : Void;
    public function parse(doc:Dynamic /* XMLHttpRequest result responseXML */, resultCallback:ColladaData->Void, ?url:String) : ColladaData;
    public function setPreferredShading(shading:Dynamic) : Void;
    public function applySkin(geometry:Geometry, instanceCtrl:Dynamic, frame:Dynamic) : Void;
    var geometries : Dynamic;
}
