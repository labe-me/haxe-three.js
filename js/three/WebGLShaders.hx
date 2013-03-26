package js.three;

// Not usefull in the API, we may prefer to remove it
@:native("THREE.ShaderChunk")
extern class WebGLShaders {
    // FOG
    public static var fog_pars_fragment : String;
    public static var fog_fragment : String;
    // ENVIRONMENT MAP
    public static var envmap_pars_fragment : String;
    public static var envmap_fragment : String;
    public static var envmap_pars_vertex : String;
    public static var envmap_vertex : String;
    // COLOR MAP (particles)
    public static var map_particle_pars_fragment : String;
    public static var map_particle_fragment : String;
    // COLOR MAP (triangles)
    public static var map_pars_vertex : String;
    public static var map_pars_fragment : String;
    public static var map_vertex : String;
    public static var map_fragment : String;
    // LIGHT MAP
    public static var lightmap_pars_fragment : String;
    public static var lightmap_pars_vertex : String;
    public static var lightmap_fragment : String;
    public static var lightmap_vertex : String;
    // LIGHTS LAMBERT
    public static var lights_lambert_pars_vertex : String;
    public static var lights_lambert_vertex : String;
    // LIGHTS PHONG
    public static var lights_phong_pars_vertex : String;
    public static var lights_phong_vertex : String;
    public static var lights_phong_pars_fragment : String;
    public static var lights_phong_fragment : String;
    // VERTEX COLORS
    public static var color_pars_fragment : String;
    public static var color_fragment : String;
    public static var color_pars_vertex : String;
    public static var color_vertex : String;
    // SKINNING
    public static var skinning_pars_vertex : String;
    public static var skinning_vertex : String;
    // MORPHING
    public static var morphtarget_pars_vertex : String;
    public static var morphtarget_vertex : String;
    public static var default_vertex : String;
    // SHADOW MAP
    public static var shadowmap_pars_fragment : String;
    public static var shadowmap_fragment : String;
    public static var shadowmap_pars_vertex : String;
    public static var shadowmap_vertex : String;
    // ALPHATEST
    public static var alphatest_fragment : String;
    // LINEAR SPACE
    public static var linear_to_gamma_fragment : String;
}

@:native("THREE.UniformsUtils")
extern class UniformsUtils {
    public static function merge(a:Array<UniformsUtils>) : Dynamic ;
    public static function clone(a:Dynamic) : Dynamic;
}

@:native("THREE.UniformsLib")
extern class UniformsLib {
    public static var common : Dynamic;
    public static var fog : Dynamic;
    public static var lights : Dynamic;
    public static var particle : Dynamic;
    public static var shadowmap : Dynamic;
}

@:native("THREE.ShaderLib")
extern class ShaderLib {
    public static var sprite : { vertexShader:String, fragmentShader:String };
    public static var depth : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var normal : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var basic : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var lambert : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var phong : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var particle_basic : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var depthRGBA : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
}
