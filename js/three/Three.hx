package js.three;

typedef Int32Array = Array<Int>;
typedef Float32Array = Array<Float>;

class Three {
    public static inline function requestAnimationFrame(f:Void->Void) : Int {
        return untyped js.Lib.window.requestAnimationFrame(f);
    }

    public static inline function cancelAnimationFrame(f:Void->Void){
        untyped js.Lib.window.cancelAnimationFrame(id);
    }

    private static function __init__() : Void untyped {
        #if !noEmbedJS
            #if debug
            haxe.macro.Tools.includeFile("js/three/three-debug.js");
            #else
            haxe.macro.Tools.includeFile("js/three/three-min.js");
            #end
        #end
    }
}
