package js.three;

@:native("THREE.LoadingMonitor")
extern class LoadingMonitor extends EventDispatcher {
    public function new() : Void;
    public function add(loader:Dynamic) : Void; /* not loader:Loader, because some loaders are not derived from Loader */
}
