package js.three;

@:native("THREE.SceneUtils")
extern class SceneUtils {
    public static function showHierarchy(root:Object3D, visible:Bool) : Void;
    public static function traverseHierarchy(root:Object3D, cb:Object3D->Void) : Void;
    public static function createMultiMaterialObject(geometry:Geometry, materials:Array<Material>) : Object3D;
    public static function cloneObject(source:Object3D) : Object3D;
}
