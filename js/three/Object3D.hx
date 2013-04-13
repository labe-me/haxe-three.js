package js.three;

@:native("THREE.Object3D")
extern class Object3D {
    public var id : Int;
    public var name : String;
    public var parent : Object3D;
    public var children : Array<Object3D>;
    public var up : Vector3; // (0,1,0)
    public var position : Vector3;
    public var rotation : Vector3;
    public var eulerOrder : String; // 'XYZ'
    public var scale : Vector3; // (1,1,1)
    public var renderDepth : Float; // null
    public var rotationAutoUpdate : Bool; // true
    public var matrix : Matrix4;
    // public var matrixWorld : Matrix4; // undocumented
    public var matrixRotationWorld : Matrix4;
    public var matrixAutoUpdate : Bool; // true
    public var matrixWorldNeedsUpdate : Bool; // true
    public var quaternion : Quaternion;
    public var useQuaternion : Bool; // false
    public var visible : Bool; // true
    public var castShadow : Bool; // false
    public var receiveShadow : Bool; // false
    public var frustumCulled : Bool; // true
    public function new() : Void;
    public function applyMatrix(matrix:Matrix4) : Void;
    public function translate(distance:Float, axis:Vector3) : Void;
    public function translateX(distance:Float) : Void;
    public function translateY(distance:Float) : Void;
    public function translateZ(distance:Float) : Void;
    public function localToWorld(vector:Vector3) : Vector3;
    public function worldToLocal(vector:Vector3) : Vector3;
    public function lookAt(vector:Vector3) : Void;
    public function add(object:Object3D) : Void;
    public function remove(object:Object3D) : Void;
    public function traverse(callback:Object3D->Void) : Void;
    public function getChildByName(name:String, ?recursive:Bool=false) : Object3D;
    public function getDescendants(?array:Array<Object3D>) : Array<Object3D>;
    public function updateMatrix() : Void;
    public function updateMatrixWorld(force:Bool=false) : Void;
    public function clone() : Object3D;
}
