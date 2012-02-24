package js;

@:native("Stats")
extern class Stats {
    public function new() : Void;
    public function getDomElement() : js.Dom.HtmlDom;
    public function getFps() : Float;
    public function getFpsMin() : Float;
    public function getFpsMax() : Float;
    public function getMs() : Float;
    public function getMsMin() : Float;
    public function getMsMax() : Float;
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