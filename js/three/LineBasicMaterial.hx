package js.three;

@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material {
    public var color : Color; // new Color(0xffffff)
    public var linewidth : Float; // 1
    public var linecap : String; // 'round'
    public var linejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var fog : Bool; // true
    public function new(?parameters:Dynamic) : Void;
}
