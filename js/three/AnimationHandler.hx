package js.three;

@:native("THREE.AnimationHandler")
extern class AnimationHandler {
    public static inline var LINEAR = 0;
    public static inline var CATMULLROM = 1;
    public static inline var CATMULLROM_FORWARD = 2;

    public static function update(deltaTimeMS:Float) : Void;
    public static function addToUpdate(animation:Animation) : Void;
    public static function removeFromUpdate(animation:Animation) : Void;
    public static function add(data:Dynamic) : Void; // data = { name:String, initialized:Bool, hierarchy:Array<Bone>??, length:Float, fps:Float }
    public static function get(name:String) : Dynamic; // data
    public static function parse(root:Mesh) : Dynamic; // hierarchie = Array<Bone> ?
}
