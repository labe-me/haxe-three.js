package js.three;

@:native("THREE.SceneUtils")
extern class SceneUtils {
    public static function createMultiMaterialObject(geometry:Geometry, materials:Array<Material>) : Object3D;
    public static function detach(child:Object3D, parent:Object3D, scene:Scene) : Void;
    public static function attach(child:Object3D, parent:Object3D, scene:Scene) : Void;
}
