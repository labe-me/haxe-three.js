package js.three;

@:native("THREE.Object3D")
extern class Object3D {
    public var name : String;
    public var id : Int;
    public var parent : Object3D;
    public var children : Array<Object3D>;
    public var up : Vector3;
    public var position : Vector3;
    public var rotation : Vector3;
    public var eulerOrder : String; // 'XYZ'
    public var scale : Vector3; // (1,1,1)
    //TODO: public var dynamic : Bool; // false, when true it retains arrays so they can be updated with __dirty*
    public var doubleSided : Bool; // false
    public var flipSided : Bool; // false
    public var renderDepth : Float; // null
    public var rotationAutoUpdate : Bool; // true
    public var matrix : Matrix4;
    public var matrixWorld : Matrix4;
    public var matrixRotationWorld : Matrix4;
    public var matrixAutoUpdate : Bool;
    public var matrixWorldNeedsUpdate : Bool;
    public var quaternion : Quaternion;
    public var useQuaternion : Bool; // false
    public var boundRadius : Float; // 0.0
    public var boundRadiusScale : Float; // 1.0
    public var visible : Bool; // true
    public var castShadow : Bool; // false
    public var receiveShadow : Bool; // false
    public var frustumCulled : Bool; // true
    public function new() : Void;
    public function translate(distance:Float, axis:Vector3) : Void;
    public function translateX(distance:Float) : Void;
    public function translateY(distance:Float) : Void;
    public function translateZ(distance:Float) : Void;
    public function lookAt(vector:Vector3) : Void;
    public function add(o:Object3D) : Void;
    public function remove(o:Object3D) : Void;
    public function getChildByName(name:String, ?doRecurse:Bool=false) : Object3D;
    public function updateMatrix() : Void;
    public function updateMatrixWorld(force:Bool=false) : Void;
}
