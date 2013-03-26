package js.three;

@:native("THREE.WebGLContext")
extern class WebGLContext {
}

@:native("THREE.WebGLRenderer")
extern class WebGLRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom; // canvas
    public var context : WebGLContext; // initGL()
    public var autoClear : Bool; // true
    public var autoClearColor : Bool; // true
    public var autoClearDepth : Bool; // true
    public var autoClearStencil : Bool; // true
    public var sortObjects : Bool; // true
    public var autoUpdateObjects : Bool; // true
    public var autoUpdateScene : Bool; // true
    public var gammaInput : Bool; // false
    public var gammaOutput : Bool; // false
    public var physicallyBasedShading : Bool; // false
    public var shadowMapEnabled : Bool; // false
    public var shadowMapAutoUpdate : Bool; // true
    public var shadowMapSoft : Bool; // true
    public var shadowMapCullFrontFaces : Bool; // true
    public var maxMorphTargets : Int; // 8
    public var autoScaleCubemaps : Bool; // true
    public var renderPluginsPre : Array<Dynamic>; // TODO
    public var renderPluginsPost : Array<Dynamic>; // TODO
    public var info : {
        memory:{ programs:Int, geometries:Int, textures:Int },
        render:{ calls:Int, vertices:Int, faces:Int, points:Int }
    };
    public function new(?parameters:Dynamic) : Void;
    public function getContext() : WebGLContext;
    public function supportsVertexTextures() : Bool;
    public function setSize(width:Int, height:Int) : Void;
    public function setViewport(x:Float, y:Float, width:Float, height:Float) : Void;
    public function setScissor(x:Float, y:Float, width:Float, height:Float) : Void;
    public function enableScissorTest(enable:Bool) : Void;
    public function setClearColorHex(hexColor:Int, opacity:Float) : Void;
    public function setClearColor(color:Color, opacity:Float) : Void;
    public function getClearColor() : Color;
    public function getClearAlpha() : Float;
    public function clear(color:Bool, depth:Bool, stencil:Bool) : Void;
    public function clearTarget(renderTarget:WebGLRenderTarget, color:Bool, depth:Bool, stencil:Bool) : Void;
    public function addPostPlugin(plugin:Dynamic) : Void; // TODO
    public function addPrePlugin(plugin:Dynamic) : Void; // TODO
    public function deallocateObject(object:Object3D) : Void;
    public function deallocateTexture(texture:Texture) : Void;
    public function updateShadowMap(scene:Scene, camera:Camera) : Void;
    public function render(scene:Scene, camera:Camera, ?renderTarget:WebGLRenderTarget, ?forceClear:Bool) : Void;
    // There are more methods, mainly private ones
}
