package js.three;

@:native("THREE.Face4")
extern class Face4 implements Face {
    public var a : Float;
    public var b : Float;
    public var c : Float;
    public var d : Float;
    public var normal : Vector3;
    public var vertexNormals : Array<Vector3>; // [ <THREE.Vector3>, <THREE.Vector3>, <THREE.Vector3> ];
    public var color : Color;
    public var vertexColors : Array<Color>; // [ :Color, :Color, :Color ];
    public var vertexTangents : Array<Vector3>;
    public var materialIndex : Int;
    public var centroid : Vector3;
    public function new(a:Float, b:Float, c:Float, d:Float, ?normal:Vector3, ?color:Color, materialIndex:Int) : Void;
}
