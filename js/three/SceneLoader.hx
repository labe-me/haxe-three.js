package js.three;

typedef SceneTrigger = {
    var type : String;
    var o : Object3D;
};

typedef SceneLoaderResult = {
    var scene : Scene;
    var geometries : Dynamic<Geometry>;
    var materials : Dynamic<Material>;
    var textures : Dynamic<Texture>;
    var objects : Dynamic<Object3D>;
    var cameras : Dynamic<Camera>;
    var lights : Dynamic<Light>;
    var fogs : Dynamic<Fog>;
    var triggers : Dynamic<SceneTrigger>;
    var empties : Dynamic<Object3D>;
};

typedef SceneLoaderProgress = {
    var totalModels : Int;
    var totalTextures : Int;
    var loadedModels : Int;
    var loadedTextures : Int;
};

@:native("THREE.SceneLoader")
extern class SceneLoader {
    public var onLoadStart : Void -> Void;
    public var onLoadProgress : Void -> Void;
    public var onLoadComplete : Void -> Void;
    var callbackSync : SceneLoaderResult -> Void;
    public var callbackProgress : SceneLoaderProgress -> SceneLoaderResult -> Void;
    public function new() : Void;
    public function load(url:String, callbackFinished:SceneLoaderResult->Void) : Void;
}
