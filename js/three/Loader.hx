package js.three;

@:native("THREE.Loader")
extern class Loader {
    public var showStatus : Bool;
    public var statusDomElement : js.html.Element;
    public var onLoadStart : Void -> Void;
    public var onLoadProgress : Void -> Void;
    public var onLoadComplete : Void -> Void;
    public function new(?showStatus:Bool) : Void;
    function addStatusElement() : js.html.DivElement;
    function updateProgress(progress:{loaded:Int, total:Int}) : Void;
    function extractUrlBase(url:String) : String;
    // materials are passed to createMaterial() but are not documented except inside src/loaders/Loaders.js createMaterial() function, these parameters comes from a model file
    function initMaterials(materials:Array<Material>, texturePath:String) : Void;
    function needsTangents(materials:Array<Material>) : Bool;
    function createMaterial(m:Dynamic, texturePath:String) : Material;
}
