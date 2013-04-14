package js.three;

@:native("THREE.LineDashedMaterial")
extern class LineDashedMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var linewidth : Float; // 1
    public var scale : Float; // 1
    public var dashSize : Float; // 3
    public var gapSize : Float; // 1
    public var vertexColors : Bool; // false
    public var fog : Bool; // true
    public function new(?parameters:Dynamic) : Void;
}
