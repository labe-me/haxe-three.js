package js;

@:native("Stats")
extern class Stats {
    public var domElement : js.Dom.HtmlDom;
    public function new() : Void;
    public function update() : Void;
}

class StatsInit {
    private static function __init__() : Void untyped {
        #if !noEmbedJS
            #if debug
            haxe.macro.Tools.includeFile("js/stats-debug.js");
            #else
            haxe.macro.Tools.includeFile("js/stats-min.js");
            #end
        #end
    }
}