package js;

@:native("Stats")
extern class Stats {
    public var domElement : js.html.Element;
    public function new() : Void;
    public function setMode(m:Int) : Void;
    public function begin() : Void;
    public function end() : Void;
    public function update() : Void;
}

class StatsInit {
    private static function __init__() : Void untyped {
        #if !noEmbedJS
            #if debug
            haxe.macro.Compiler.includeFile("vendor/stats.js/stats-debug.js");
            #else
            haxe.macro.Compiler.includeFile("vendor/stats.js/stats-min.js");
            #end
        #end
    }
}