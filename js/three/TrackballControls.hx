package js.three;
import js.html.Element;

/**
 * ...
 * @author AS3Boyan
 */
@:native("THREE.TrackballControls")
extern class TrackballControls
{
	public var object:Dynamic;
	public var domElement:Element;
	public var enabled:Bool;
	public var screen:Dynamic;
	
	public var rotateSpeed:Float;
	public var zoomSpeed:Float;
	public var panSpeed:Float;

	public var noRotate:Bool;
	public var noZoom:Bool;
	public var noPan:Bool;
	public var noRoll:Bool;

	public var staticMoving:Bool;
	public var dynamicDampingFactor:Float;

	public var minDistance:Float;
	public var maxDistance:Float;

	public var keys:Dynamic;
	
	public var target:js.three.Vector3;
	
	public function new(camera:js.three.Camera, rendererDomElement:Element) 
	{
		
	}
	
	public function update():Void;
	public function reset():Void;
	
	public function handleResize():Void;
	public function handleEvent(event:Dynamic):Void;
	public function getMouseOnScreen(pageX:Float, pageY:Float, vector:Dynamic):Dynamic;
	public function getMouseProjectionOnBall(pageX:Float, pageY:Float, projection:Dynamic):Dynamic;
	public function zoomCamera():Void;	
	public function panCamera():Void;
	public function checkDistances():Void;
	
}