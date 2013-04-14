package js.three;

@:native("THREE.Gyroscope")
extern class Gyroscope extends Object3D {
    public function new() : Void;
    // overrides public function updateMatrixWorld(force:Bool) : Void;

    //TODO: not sure if I need to represent these here
    // THREE.Gyroscope.prototype.translationWorld = new THREE.Vector3();
    // THREE.Gyroscope.prototype.translationObject = new THREE.Vector3();
    // THREE.Gyroscope.prototype.rotationWorld = new THREE.Quaternion();
    // THREE.Gyroscope.prototype.rotationObject = new THREE.Quaternion();
    // THREE.Gyroscope.prototype.scaleWorld = new THREE.Vector3();
    // THREE.Gyroscope.prototype.scaleObject = new THREE.Vector3();
}
