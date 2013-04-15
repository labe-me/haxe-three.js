package js.three;

interface Face {
    public var a : Float;
    public var b : Float;
    public var c : Float;
    public var normal : Vector3;
    public var vertexNormals : Array<Vector3>; // [ <THREE.Vector3>, <THREE.Vector3>, <THREE.Vector3> ];
    public var color : Color;
    public var vertexColors : Array<Color>; // [ :Color, :Color, :Color ];
    public var vertexTangents : Array<Vector3>;
    public var materialIndex : Int;
    public var centroid : Vector3;
}
