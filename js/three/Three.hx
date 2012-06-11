package js.three;

typedef Int32Array = Array<Int>;
typedef Float32Array = Array<Float>;


// +BEGIN src/cameras/Camera.js
// Deprecated? If so, replace with "interface Camera"
@:native("THREE.Camera")
extern class Camera extends Object3D {
    public function new() : Void;
    public var matrixWorldInverse : Matrix4;
    public var projectionMatrix : Matrix4;
    public var projectionMatrixInverse : Matrix4;
    // override public function lookAt(v:Vector3) : Void;
}
// +END src/camera/Camera.js


// +BEGIN src/Three.js
// TODO: window.requestAnimationFrame(callback, element) : Int
// TODO: window.cancelAnimationFrame(id:Int) : Void
// +END src/Three.js


// +BEGIN src/cameras/PerspectiveCamera.js
@:native("THREE.PerspectiveCamera")
extern class PerspectiveCamera extends Camera {
    public var fov : Float; // 50
    public var aspect : Float; // 1
    public var near : Float; // 0.1
    public var far : Float; // 2000
    // set by setViewOffset
    public var fullWidth : Float;
    public var fullHeight : Float;
    public var x : Float;
    public var y : Float;
    public var width : Float;
    public var height : Float;
    public function new(?fov:Float, ?aspect:Float, ?near:Float, ?far:Float) : Void;
    public function setLens(focalLength:Float, ?frameSize:Float) : Void;
    public function setViewOffset(fullWidth:Float, fullHeight:Float, x:Float, y:Float, width:Float, height:Float) : Void;
    public function updateProjectionMatrix() : Void;
}
// +END src/cameras/PerspectiveCamera.js


// +BEGIN src/cameras/OrthographicCamera.js
@:native("THREE.OrthographicCamera")
extern class OrthographicCamera extends Camera {
    public function new(left:Float, right:Float, top:Float, bottom:Float, ?near:Float, ?far:Float) : Void;
    public var left : Float;
    public var right : Float;
    public var top : Float;
    public var bottom : Float;
    public var near : Float;
    public var far : Float;
    public function updateProjectionMatrix() : Void;
}
// +END src/cameras/OrthographicCamera.js


// +BEGIN src/core/Clock.js
@:native("THREE.Clock")
extern class Clock {
    public var autoStart : Bool;
    public var startTime : Float;
    public var oldTime : Float;
    public var elapsedTime : Float;
    public var running : Bool;
    public function new(autoStart:Bool=true) : Void;
    public function start() : Void;
    public function stop() : Void;
    public function getElapsedTime() : Float;
    public function getDelta() : Float;
}
// +END src/core/Clock.js


// +BEGIN src/core/Color.js
@:native("THREE.Color")
extern class Color {
    public var r : Float;
    public var g : Float;
    public var b : Float;
    public function new(?hex:Int) : Void;
    public function copy(color:Color) : Color;
    public function copyCammaToLinear(color:Color) : Color;
    public function copyLinearToGamma(color:Color) : Color;
    public function convertGammaToLinear() : Color;
    public function convertLinearToGamma() : Color;
    public function setRGB(r:Float, g:Float, b:Float) : Color;
    public function setHSV(h:Float, s:Float, v:Float) : Color;
    public function setHex(hex:Int) : Color;
    public function getHex() : Int;
    public function getContextStyle() : String; // "rgb(r,g,b)"
    public function clone() : Color;
}
// +END src/core/Color.js


// +BEGIN src/core/Edge.js
@:native("THREE.Edge")
extern class Edge {
    public var vertices : Array<Vertex>;
    public var vertexIndices : Array<Int>;
    public var faces : Array<Face3>;
    public var faceIndices : Array<Int>;
    public function new(v1:Vertex, v2:Vertex, vi1:Int, vi2:Int) : Void;
}
// +END src/core/Edge.js


interface Face {}


// +BEGIN src/core/Face3.js
@:native("THREE.Face3")
extern class Face3 implements Face {
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
    @:overload(function(a:Float, b:Float, c:Float, ?vertexNormals:Array<Vector3>, ?color:Color, materialIndex:Int):Void {})
    @:overload(function(a:Float, b:Float, c:Float, ?vertexNormals:Array<Vector3>, ?vertexColors:Array<Color>, materialIndex:Int):Void {})
    @:overload(function(a:Float, b:Float, c:Float, ?normal:Vector3, ?vertexColors:Array<Color>, materialIndex:Int) : Void {})
    public function new(a:Float, b:Float, c:Float, ?normal:Vector3, ?color:Color, materialIndex:Int) : Void;
}
// +END src/core/Face3.js


// +BEGIN src/core/Face4.js
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
    @:overload(function(a:Float, b:Float, c:Float, d:Float, ?vertexNormals:Array<Vector3>, ?color:Color, materialIndex:Int):Void {})
    @:overload(function(a:Float, b:Float, c:Float, d:Float, ?vertexNormals:Array<Vector3>, ?vertexColors:Array<Color>, materialIndex:Int):Void {})
    @:overload(function(a:Float, b:Float, c:Float, d:Float, ?normal:Vector3, ?vertexColors:Array<Color>, materialIndex:Int) : Void {})
    public function new(a:Float, b:Float, c:Float, d:Float, ?normal:Vector3, ?color:Color, materialIndex:Int) : Void;
}
// +END src/core/Face4.js


// +BEGIN src/core/Frustum.js
@:native("THREE.Frustum")
extern class Frustum {
    public var planes : Array<Vector4>;
    public function new() : Void;
    public function setFromMatrix(m:Matrix4) : Void;
    public function contains(o:Object3D) : Bool;
}
// +END src/core/Frustum.js


// +BEGIN src/core/Geometry.js
@:native("THREE.Geometry")
extern class Geometry {
    public var id : Int;
    public var vertices : Array<Vertex>;
    public var colors : Array<Color>;
    public var materials : Array<Material>;
    public var faces : Array<Face4>;
    public var faceUvs : Array<Array<UV>>;
    public var faceVertexUvs : Array<Array<UV>>;
    public var morphTargets : Array<{name:String, vertices:Array<Vertex>}>;
    public var morphColors : Array<Color>;
    public var skinWeights : Array<Vector4>;
    public var skinIndices : Array<Vector4>;
    public var boundingBox : { x:Array<Float>, y:Array<Float>, z:Array<Float> };
    public var boundingSphere : { radius:Float };
    public var hasTangents : Bool; // false
    // public var dynamic : Bool; // false, unless set to true the *Arrays will be deleted once sent to a buffer.
    public function new() : Void;
    public function applyMatrix(matrix:Matrix4) : Void;
    public function computeCentroids() : Void;
    public function computeFaceNormals() : Void;
    public function computeVertexNormals() : Void;
    public function computeTangents() : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
    public function mergeVertices() : Void;
}
// +END src/core/Geometry.js


// +BEGIN src/core/Math.js
// TODO: Meow... import js.three.Three is not really helpful there, we may haxe to split the API into many files
@:native("THREE.Math")
extern class MathUtils {
    public static function clamp(x:Float, a:Float, b:Float) : Float;
    public static function clampBottom(x:Float, a:Float) : Float;
    public static function mapLinear(x:Float, a1:Float, a2:Float, b1:Float, b2:Float) : Float;
    public static function random16() : Float;
    public static function randInt(low:Int, high:Int) : Int;
    public static function randFloat(low:Float, high:Float) : Float;
    // <-range/2, range/2> interval
    public static function randFloatSpread(range:Float) : Float;
}
// +END src/core/Math.js


// +BEGIN src/core/Matrix3.js
@:native("THREE.Matrix3")
extern class Matrix3 {
    public var m : Array<Float>;
    public function new() : Void;
    public function transpose() : Matrix3;
    public function transposeIntoArray(dest:Array<Float>) : Matrix3;
}
// +END src/core/Matrix3.js


// +BEGIN src/core/Matrix4.js
@:native("THREE.Matrix4")
extern class Matrix4 {
    public var n11 : Float;
    public var n12 : Float;
    public var n13 : Float;
    public var n14 : Float;
    public var n21 : Float;
    public var n22 : Float;
    public var n23 : Float;
    public var n24 : Float;
    public var n31 : Float;
    public var n32 : Float;
    public var n33 : Float;
    public var n34 : Float;
    public var n41 : Float;
    public var n42 : Float;
    public var n43 : Float;
    public var n44 : Float;
    public var flat : Array<Float>;
    public var m33 : Matrix3;
    @:overload(function() : Void {})
    @:overload(function(?n11:Float, ?n12:Float, ?n13:Float, ?n14:Float, ?n21:Float, ?n22:Float, ?n23:Float, ?n24:Float, ?n31:Float, ?n32:Float, ?n33:Float, ?n34:Float, ?n41:Float, ?n42:Float, ?n43:Float, ?n44:Float) : Void {})
    public function new(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Void;
    public function set(n11:Float, n12:Float, n13:Float, n14:Float, n21:Float, n22:Float, n23:Float, n24:Float, n31:Float, n32:Float, n33:Float, n34:Float, n41:Float, n42:Float, n43:Float, n44:Float) : Matrix4;
    public function identity() : Matrix4;
    public function copy(m:Matrix4) : Matrix4;
    public function lookAt(eye:Vector3, center:Vector3, up:Vector3) : Matrix4;
    public function multiply(a:Matrix4, b:Matrix4) : Matrix4;
    public function multiplySelf(m:Matrix4) : Matrix4;
    public function multiplyToArray(a:Matrix4, b:Matrix4, r:Array<Float>) : Matrix4;
    public function multiplyScalar(s:Float) : Matrix4;
    public function multiplyVector3(v:Vector3) : Vector3;
    public function multiplyVector4(v:Vector4) : Vector4;
    public function rotateAxis(v:Vector3) : Vector3;
    public function crossVector(a:Vector4) : Vector4;
    public function determinant() : Float;
    public function transpose() : Matrix4;
    public function clone() : Matrix4;
    public function flatten() : Array<Float>;
    public function flattenToArray(flat:Array<Float>) : Array<Float>;
    public function flattenToArrayOffset(flat:Array<Float>, offset:Float) : Array<Float>;
    public function setTranslation(x:Float, y:Float, z:Float) : Matrix4;
    public function setScale(x:Float, y:Float, z:Float) : Matrix4;
    public function setRotationX(theta:Float) : Matrix4;
    public function setRotationY(theta:Float) : Matrix4;
    public function setRotationZ(theta:Float) : Matrix4;
    public function setRotationAxis(axis:Vector3, angle:Float) : Matrix4;
    public function setPosition(v:Vector3) : Matrix4;
    public function getPosition() : Vector3;
    public function getColumnX() : Vector3;
    public function getColumnY() : Vector3;
    public function getColumnZ() : Vector3;
    public function getInverse(m:Matrix4) : Matrix4;
    // order = 'YXZ', 'ZXY', 'ZYX', 'YZX', 'XZY', default='XYZ'
    public function setRotationFromEuler(v:Vector3, ?order:String) : Matrix4;
    public function setRotationFromQuaternion(q:Quaternion) : Matrix4;
    public function scale(v:Vector3) : Matrix4;
    public function compose(translation:Vector3, rotation:Quaternion, scale:Vector3) : Matrix4;
    public function decompose(?translation:Vector3, ?rotation:Quaternion, ?scale:Vector3) : Array<Dynamic>; // [translation, rotation, scale]
    public function extractPosition(m:Matrix4) : Matrix4;
    public function extractRotation(m:Matrix4, s:Float) : Matrix4;
    public function rotateByAxis(axis:Vector3, angle:Float) : Matrix4;
    public function rotateX(angle:Float) : Matrix4;
    public function rotateY(angle:Float) : Matrix4;
    public function rotateZ(angle:Float) : Matrix4;
    public function translate(v:Vector3) : Matrix4;
    //public static function makeInvert(m1:Matrix4, m2:Matrix4);
    public static function makeInvert3x3(m1:Matrix4) : Matrix3;
    public static function makeFrustum(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4;
    public static function makePerspective(fov:Float, aspect:Float, near:Float, far:Float) : Matrix4;
    public static function makeOrtho(left:Float, right:Float, bottom:Float, top:Float, near:Float, far:Float) : Matrix4;
}
// +END src/core/Matrix4.js


// +BEGIN src/core/Object3D.js
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
// +END src/core/Object3D.js


// +BEGIN src/core/Projector.js
@:native("THREE.Projector")
extern class Projector {
    public function new() : Void;
    public function computeFrustum(m:Matrix4) : Void;
    public function projectVector(vector:Vector3, camera:Camera) : Void;
    public function unprojectVector(vector:Vector3, camera:Camera) : Vector3;
    public function pickingRay(vector:Vector3, camera:Camera) : Ray;
    public function projectGraph(root:Object3D, sort:Bool) : Dynamic; // returns _renderData
    public function projectScene(scene:Scene, camera:Camera, sort:Bool) : Dynamic; // returns _renderData
}
// +END src/core/Projector.js


// +BEGIN src/core/Quaternion.js
@:native("THREE.Quaternion")
extern class Quaternion {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function set(x:Float, y:Float, z:Float, w:Float) : Quaternion;
    public function copy(q:Quaternion) : Quaternion;
    public function setFromEuler(v:Vector3) : Quaternion;
    public function setFromAxisAngle(axis:Vector3, angle:Float) : Quaternion;
    public function setFromRotationMatrix(m:Matrix4) : Quaternion;
    public function calculateW() : Quaternion;
    public function inverse() : Quaternion;
    public function length() : Float;
    public function normalize() : Quaternion;
    public function multiplySelf(q:Quaternion) : Quaternion;
    public function multiply(q1:Quaternion, q2:Quaternion) : Quaternion;
    public function multiplyVector3(vec:Vector3, dest:Vector3) : Vector3;
    public static function slerp(qa:Quaternion, qb:Quaternion, qm:Quaternion, t:Float) : Quaternion;
}
// +END src/core/Quaternion.js


// +BEGIN src/core/Ray.js
typedef RayIntersect = {
    var distance : Float;
    var point : Vector3;
    var face : Face;
    var object : Object3D;
};

@:native("THREE.Ray")
extern class Ray {
    public var origin : Vector3;
    public var direction : Vector3;
    public function new(?origin:Vector3, ?direction:Vector3) : Void;
    public function intersectScene(scene:Scene) : Array<RayIntersect>;
    public function intersectObjects(objects:Array<Object3D>) : Array<RayIntersect>;
    public function intersectObject(object:Object3D) : Array<RayIntersect>;
}
// +END src/core/Ray.js


// +BEGIN src/core/Rectangle.js
@:native("THREE.Rectangle")
extern class Rectangle {
    public function resize() : Void;
    public function getX() : Float;
    public function getY() : Float;
    public function getWidth() : Float;
    public function getHeight() : Float;
    public function getLeft() : Float;
    public function getTop() : Float;
    public function getRight() : Float;
    public function getBottom() : Float;
    public function set(left:Float, top:Float, right:Float, bottom:Float) : Void;
    public function addPoint(x:Float, y:Float) : Void;
    public function add3Points(x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void;
    public function addRectangle(r:Rectangle) : Void;
    public function inflate(v:Float) : Void;
    public function minSelf(r:Rectangle) : Void;
    public function intersects(r:Rectangle) : Bool;
    public function empty() : Void;
    public function isEmpty() : Bool;
}
// +END src/core/Rectangle.js


// +BEGIN src/core/Spline.js
@:native("THREE.Spline")
extern class Spline {
    public var points : Array<{x:Float, y:Float, z:Float}>;
    public function new(points:Array<Float>) : Void;
    public function initFromArray(a:Array<Array<Float>>) : Void;
    public function getPoint(k:Float) : {x:Float, y:Float, z:Float};
    public function getControlPointsArray() : Array<Array<Float>>;
    public function getLength(?nSubDivisions:Int) : { chunks:Array<Float>, total:Float };
    public function reparametrizeByArcLength(samplingCoef:Float) : Void;
    public function interpolate(p0:Float, p1:Float, p2:Float, p4:Float, t:Float, t2:Float, t3:Float) : Float;
}
// +END src/core/Spline.js


// +BEGIN src/core/UV.js
@:native("THREE.UV")
extern class UV {
    public var u : Float;
    public var v : Float;
    public function new(?u:Float, ?v:Float) : Void;
    public function set(u:Float, v:Float) : UV;
    public function copy(uv:UV) : UV;
    public function clone() : UV;
}
// +END src/core/UV.js


// +BEGIN src/core/Vector2.js
@:native("THREE.Vector2")
extern class Vector2 {
    public var x : Float;
    public var y : Float;
    public function new(?x:Float, ?y:Float) : Void;
    public function set(x:Float, y:Float) : Vector2;
    public function copy(v:Vector2) : Vector2;
    public function clone() : Vector2;
    public function add(v1:Vector2, v2:Vector2) : Vector2;
    public function addSelf(v:Vector2) : Vector2;
    public function sub(v1:Vector2, v2:Vector2) : Vector2;
    public function subSelf(v:Vector2) : Vector2;
    public function multiplyScalar(s:Float) : Vector2;
    public function divideScalar(s:Float) : Vector2;
    public function negate() : Vector2;
    public function dot(v:Vector2) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Vector2;
    public function distanceTo(v:Vector2) : Float;
    public function distanceToSquared(v:Vector2) : Float;
    public function setLength(l:Float) : Float;
    public function equals(v:Vector2) : Bool;
}
// +END src/core/Vector2.js


// +BEGIN src/core/Vector3.js
@:native("THREE.Vector3")
extern class Vector3 {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public function new(?x:Float, ?y:Float, ?z:Float) : Void;
    public function set(x:Float, y:Float, z:Float) : Vector3;
    public function setX(x:Float) : Vector3;
    public function setY(y:Float) : Vector3;
    public function setZ(z:Float) : Vector3;
    public function copy(v:Vector3) : Vector3;
    public function clone() : Vector3;
    public function add(v1:Vector3, v2:Vector3) : Vector3;
    public function addSelf(v:Vector3) : Vector3;
    public function addScalar(s:Float) : Vector3;
    public function sub(v1:Vector3, v2:Vector3) : Vector3;
    public function subSelf(v:Vector3) : Vector3;
    public function multiply(a:Vector3, b:Vector3) : Vector3;
    public function multiplySelf(v:Vector3) : Vector3;
    public function multiplyScalar(s:Float) : Vector3;
    public function divideSelf(v:Vector3) : Vector3;
    public function divideScalar(s:Float) : Vector3;
    public function negate() : Vector3;
    public function dot(v:Vector3) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function lengthManhattan() : Float;
    public function normalize() : Vector3;
    public function setLength(l:Float) : Vector3;
    public function cross(a:Vector3, b:Vector3) : Vector3;
    public function crossSelf(v:Vector3) : Vector3;
    public function distanceTo(v:Vector3) : Float;
    public function distanceToSquared(v:Vector3) : Float;
    public function setPositionFromMatrix(m:Matrix4) : Void;
    public function setRotationFromMatrix(m:Matrix4) : Void;
    public function isZero() : Bool;
}
// +END src/core/Vector3.js


// +BEGIN src/core/Vector4.js
@:native("THREE.Vector4")
extern class Vector4 {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var w : Float;
    public function new(?x:Float, ?y:Float, ?z:Float, ?w:Float) : Void;
    public function set(x:Float, y:Float, z:Float, w:Float) : Void;
    public function copy(v:Vector4) : Vector4;
    public function clone() : Vector4;
    public function add(v1:Vector4, v2:Vector4) : Vector4;
    public function addSelf(v:Vector4) : Vector4;
    public function sub(v1:Vector4, v2:Vector4) : Vector4;
    public function subSelf(v:Vector4) : Vector4;
    public function multiplyScalar(s:Float) : Vector4;
    public function divideScalar(s:Float) : Vector4;
    public function negate() : Vector4;
    public function dot(v:Vector4) : Float;
    public function lengthSq() : Float;
    public function length() : Float;
    public function normalize() : Vector4;
    public function setLength(s:Float) : Vector4;
    public function lerpSelf(v:Vector4, alpha:Float) : Vector4;
}
// +END src/core/Vector4.js


// +BEGIN src/core/Vertex.js
@:native("THREE.Vertex")
extern class Vertex {
    public var position : Vector3;
    public function new(?pos:Vector3) : Void;
}
// +END src/core/Vectex.js


// +BEGIN src/lights/Light.js
@:native("THREE.Light")
extern class Light extends Object3D {
    public var color : Color;
    public function new(hexColor:Int) : Void;
}
// +END src/lights/Light.js


// +BEGIN src/lights/AmbientLight.js
@:native("THREE.AmbientLight")
extern class AmbientLight extends Light {
    public function new(hexColor:Int) : Void;
}
// +END src/lights/AmbientLight.js


// +BEGIN src/lights/DirectionalLight.js
@:native("THREE.DirectionalLight")
extern class DirectionalLight extends Light {
    public var intensity : Float; // 1
    public var distance : Float; // 0
    public function new(hexColor:Int, ?intensity:Float, ?distance:Float) : Void;
}
// +END src/lights/DirectionalLight.js


// +BEGIN src/lights/PointLight.js
@:native("THREE.PointLight")
extern class PointLight extends Light {
    public var intensity : Float; // 1
    public var distance : Float; // 0
    public function new(hexColor:Int, ?intensity:Float, ?distance:Float) : Void;
}
// +END src/lights/PointLight.js


// +BEGIN src/lights/SpotLight
@:native("THREE.SpotLight")
extern class SpotLight extends Light {
    public var intensity : Float; // 1
    public var target : Object3D;
    public var distance : Float; // 0
    public function new(hexColor:Int, ?intensity:Float, ?distance:Float, ?castShadow:Bool) : Void;
}
// +END src/lights/SpotLight


// +BEGIN src/materials/Material.js
@:native("THREE.Material")
extern class Material {
    public var name : String;
    public var id : Int;
    public var opacity : Float; // 1
    public var transparent : Bool; // false
    public var blending : Int; // Blending.Normal
    public var depthTest : Bool; // true
    public var depthWrite : Bool; // true
    public var polygonOffset : Bool; // false
    public var polygonOffsetFactor : Float; // 0
    public var polygonOffsetUnits : Float; // 0
    public var alphaTest : Float; // 0
    public var overdraw : Bool; // true, Boolean for fixing antialiasing gaps in CanvasRenderer
    public function new(?parameters:Dynamic) : Void;
}

class Shading {
    public static inline var None = 0;
    public static inline var Flat = 1;
    public static inline var Smooth = 2;
}

class Colors {
    public static inline var NoColors = 0;
    public static inline var FaceColors = 1;
    public static inline var VertexColors = 2;
}

class Blending {
    public static inline var NormalBlending = 0;
    public static inline var AdditiveBlending = 1;
    public static inline var SubtractiveBlending = 2;
    public static inline var MultiplyBlending = 3;
    public static inline var AdditiveAlphaBlending = 4;
}
// +END src/materials/Material.js


// +BEGIN src/materials/LineBasicMaterial.js
@:native("THREE.LineBasicMaterial")
extern class LineBasicMaterial extends Material {
    public var color : Color; // new Color(parameters.color) || new Color(0xffffff)
    public var linewidth : Float; // 1
    public var linecap : String; // 'round'
    public var linejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var fog : Bool; // true
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  color: <hex>,
     *  opacity: <float>,
     *
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  linewidth: <float>,
     *  linecap: "round",
     *  linejoin: "round",
     *
     *  vertexColors: <bool>
     *
     *  fog: <bool>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/LineBasicMaterial.js


// +BEGIN src/materials/MeshBasicMaterial.js
@:native("THREE.MeshBasicMaterial")
extern class MeshBasicMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var map : Texture;
    public var lightMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // Operation.Multiply
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Bool; // false, THREE.VertexColors, THREE.FaceColors
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  color: <hex>,
     *  opacity: <float>,
     *  map: new THREE.Texture( <Image> ),
     *
     *  lightMap: new THREE.Texture( <Image> ),
     *
     *  envMap: new THREE.TextureCube( [posx, negx, posy, negy, posz, negz] ),
     *  combine: THREE.Multiply,
     *  reflectivity: <float>,
     *  refractionRatio: <float>,
     *
     *  shading: THREE.SmoothShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>,
     *
     *  vertexColors: false / THREE.VertexColors / THREE.FaceColors,
     *  skinning: <bool>,
     *
     *	fog: <bool>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/MeshBasicMaterial.js


// +BEGIN src/materials/MeshDepthMaterial.js
@:native("THREE.MeshDepthMaterial")
extern class MeshDepthMaterial extends Material {
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  opacity: <float>,

     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,

     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/MeshDepthMaterial.js


// +BEGIN src/materials/MeshFaceMaterial.js
// in fact does not extends Material... empty class
@:native("THREE.MeshFaceMaterial")
extern class MeshFaceMaterial extends Material {
    public function new() : Void;
}
// +END src/materials/MeshFaceMaterial.js


// +BEGIN src/materials/MeshLambertMaterial.js
@:native("THREE.MeshLambertMaterial")
extern class MeshLambertMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var ambient : Color; // new Color(parameters.color) | new Color(0x050505)
    public var wrapAround : Bool; // false
    public var wrapRGB : Vector3; // (1,1,1)
    public var map : Texture;
    public var lightMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // Operation.Multiply
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    /**
     * @author mr.doob / http://mrdoob.com/
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  color: <hex>,
     *  ambient: <hex>,
     *  opacity: <float>,
     *
     *  map: new THREE.Texture( <Image> ),
     *
     *  lightMap: new THREE.Texture( <Image> ),
     *
     *  envMap: new THREE.TextureCube( [posx, negx, posy, negy, posz, negz] ),
     *  combine: THREE.Multiply,
     *  reflectivity: <float>,
     *  refractionRatio: <float>,
     *
     *  shading: THREE.SmoothShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,
     *
     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>,
     *
     *  vertexColors: false / THREE.VertexColors / THREE.FaceColors,
     *  skinning: <bool>,
     *
     *      fog: <bool>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/MeshLambertMaterial.js


// +BEGIN src/materials/MeshNormalMaterial.js
@:native("THREE.MeshNormalMaterial")
extern class MeshNormalMaterial extends Material {
    public var shading : Int; // Shading.Flat
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    /**
     * @author mr.doob / http://mrdoob.com/
     *
     * parameters = {
     *  opacity: <float>,

     *  shading: THREE.FlatShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,

     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/MeshNormalMaterial.js


// +BEGIN src/materials/MeshPhongMaterial.js
@:native("THREE.MeshPhongMaterial")
extern class MeshPhongMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var ambient : Color; // new Color(parameters.ambient) | new Color(0x050505)
    public var specular : Color;  // new Color(parameters.specular) | new Color(0x111111)
    public var shininess : Float; // 30
    public var metal : Bool; // false
    public var perPixel : Bool; // false
    public var wrapAround : Bool; // false
    public var wrapRGB : Vector3; // (1,1,1)
    public var map : Texture;
    public var lightMap : Texture;
    public var envMap : Texture; // TextureCube?
    public var combine : Int; // Operation.Multiply
    public var reflectivity : Float; // 1
    public var refractionRatio : Float; // 0.98
    public var fog : Bool; // true
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var wireframeLinecap : String; // 'round'
    public var wireframeLinejoin : String; // 'round'
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/MeshPhongMaterial.js


// +BEGIN src/materials/MeshShaderMaterial.js
// deprecated MeshShaderMaterial, use ShaderMaterial instead
// +END src/materials/MeshShaderMaterial.js


// +BEGIN src/materials/ParticleBasicMaterial.js
@:native("THREE.ParticleBasicMaterial")
extern class ParticleBasicMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var map : Texture; // parameters.map
    public var size : Float; // parameters.size | 1
    public var sizeAttenuation : Bool; // parameters.sizeAttenuation | true
    public var vertexColors : Bool; // parameters.vertexColors | false
    public var fog : Bool; // parameters.fog | true
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/ParticleBasicMaterial.js


// +BEGIN src/materials/ParticleCanvasMaterial.js
@:native("THREE.ParticleCanvasMaterial")
extern class ParticleCanvasMaterial extends Material {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var program : Dynamic->Color->Void;
    /**
     * @author mr.doob / http://mrdoob.com/
     *
     * parameters = {
     *  color: <hex>,
     *  program: <function>(context, color),
     *  opacity: <float>,
     *  blending: THREE.NormalBlending
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/ParticleCanvasMaterial.js


// +BEGIN src/materials/ParticleDOMMaterial.js
@:native("THREE.ParticleDOMMaterial")
extern class ParticleDOMMaterial extends Material {
    public var domElement : js.Dom.HtmlDom;
    public function new(el:js.Dom.HtmlDom) : Void;
}
// +END src/materials/ParticleDOMMaterial.js


// +BEGIN src/materials/ShaderMaterial.js
@:native("THREE.ShaderMaterial")
extern class ShaderMaterial extends Material {
    public var fragmentShader : String;
    public var vertexShader : String;
    public var uniforms : Dynamic;
    public var attributes : Dynamic;
    public var shading : Int; // Shading.Smooth
    public var wireframe : Bool; // false
    public var wireframeLinewidth : Float; // 1
    public var fog : Bool; // false
    public var lights : Bool; // false
    public var vertexColors : Bool; // false
    public var skinning : Bool; // false
    public var morphTargets : Bool; // false
    /**
     * @author alteredq / http://alteredqualia.com/
     *
     * parameters = {
     *  fragmentShader: <string>,
     *  vertexShader: <string>,

     *  uniforms: { "parameter1": { type: "f", value: 1.0 }, "parameter2": { type: "i" value2: 2 } },

     *  shading: THREE.SmoothShading,
     *  blending: THREE.NormalBlending,
     *  depthTest: <bool>,

     *  wireframe: <boolean>,
     *  wireframeLinewidth: <float>,

     *  lights: <bool>,
     *  vertexColors: <bool>,
     *  skinning: <bool>,
     *  morphTargets: <bool>,
     * }
     */
    public function new(?parameters:Dynamic) : Void;
}
// +END src/materials/ShaderMaterial.js


// +BEGIN src/textures/Texture.js
@:native("THREE.Texture")
extern class Texture {
    public var id : Int;
    public var image : Dynamic; // TODO: find real type { data:Dynamic, width:Int, height:Int }
    public var mapping : Mapping;
    public var wrapS : Int; // Wrapping.ClampToEdge
    public var wrapT : Int; // Wrapping.ClampToEdge
    public var magFilter : Int; // Filter.Linear
    public var minFilter : Int; // Filter.LinearMipMapLinear
    public var format : Int; // Format.RGBA
    public var type : Int; // Type.UnsignedByte
    public var offset : Vector2;
    public var repeat : Vector2;
    public var generateMipmaps : Bool; // true
    public var needsUpdate : Bool;
    public var onUpdate : Void -> Void; // TODO: WTF?
    public function new(image:js.Dom.Image, ?mapping:Mapping, ?wrapS:Int, ?wrapT:Int, ?magFilter:Int, ?minFilter:Int, ?format:Int, ?type:Int) : Void;
    public function clone() : Texture;
}

class Operation {
    public static inline var Multiply = 0;
    public static inline var Mix = 1;
}

interface Mapping {}
@:native("THREE.CubeReflectionMapping")
extern class CubeReflectionMapping implements Mapping {}
@:native("THREE.CubeRefractionMapping")
extern class CubeRefractionMapping implements Mapping  {}
@:native("THREE.LatitudeReflectionMapping")
extern class LatitudeReflectionMapping implements Mapping  {}
@:native("THREE.LatitudeRefractionMapping")
extern class LatitudeRefractionMapping implements Mapping  {}
@:native("THREE.SphericalReflectionMapping")
extern class SphericalReflectionMapping implements Mapping  {}
@:native("THREE.SphericalRefractionMapping")
extern class SphericalRefractionMapping implements Mapping  {}
@:native("THREE.UVMapping")
extern class UVMapping implements Mapping  {}

class Wrapping {
    public static inline var Repeat = 0;
    public static inline var ClampToEdge = 1;
    public static inline var MirroredRepeat = 2;
}

class Filter {
    public static inline var Nearest = 3;
    public static inline var NearestMipMapNearest = 4;
    public static inline var NearestMipMapLinear = 5;
    public static inline var Linear = 6;
    public static inline var LinearMipMapNearest = 7;
    public static inline var LinearMipMapLinear = 8;
}

class Type {
    public static inline var Byte = 9;
    public static inline var UnsignedByte = 10;
    public static inline var Short = 11;
    public static inline var UnsignedShort = 12;
    public static inline var Int = 13;
    public static inline var UnsignedInt = 14;
    public static inline var Float = 15;
}

class Format {
    public static inline var Alpha = 16;
    public static inline var RGB = 17;
    public static inline var RGBA = 18;
    public static inline var Luminance = 19;
    public static inline var LuminanceAlpha = 20;
}

// +END src/textures/Texture.js


// +BEGIN src/textures/DataTexture.js

// TODO: Find a type for image data :)
@:native("THREE.DataTexture") extern class DataTexture extends Texture {
    //public var image : { data:Dynamic, width:Int, height:Int };
    public function new(data:Dynamic, width:Int, height:Int, ?format:Int, ?type:Int, ?mapping:Mapping, ?wrapS:Int, ?wrapT:Int, ?magFilter:Int, ?minFilter:Int) : Void;
    // override public function clone() : DataTexture;
}

// +END src/textures/DataTexture.js


// +BEGIN src/objects/Bone.js
@:native("THREE.Bone")
extern class Bone extends Object3D {
    public var skin : Bool; // belongToSkin
    public var skinMatrix : Matrix4;
    public function new(belongToSkin:Bool) : Void;
    public function update(parentSkinMatrix:Matrix4, forceUpdate:Bool) : Void;
}
// +END src/objects/Bone.js


// +BEGIN src/objects/Line.js
@:native("THREE.Line")
extern class Line extends Object3D {
    public var geometry : Geometry;
    public var materials : Material;
    public var type : Int; // LineType.Strip
    public function new(geometry:Geometry, material:Material, ?type:Int) : Void;
}

class LineType {
    public static inline var Strip = 0;
    public static inline var Pieces = 1;
}
// +END src/objects/Line.js


// +BEGIN src/objects/LOD.js
@:native("THREE.LOD")
extern class LOD extends Object3D {
    public var LODs : Array<{ visibleAtDistance:Float, object3D:Object3D }>;
    public function addLevel(o:Object3D, ?visibleAtDistance:Float=0.0) : Void;
    public function update(camera:Camera) : Void;
}
// +END src/objects/LOD.js


// +BEGIN src/objects/Mesh.js
@:native("THREE.Mesh")
extern class Mesh extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public function new(geometry:Geometry, material:Material) : Void;
    public function getMorphTargetIndexByName(name:String) : Int;
}
// +END src/objects/Mesh.js


// +BEGIN src/objects/MorphAnimMesh.js
@:native("THREE.MorphAnimMesh")
extern class MorphAnimMesh extends Mesh {
    public var duration : Float; // 1000 (millis)
    public var mirroredLoop : Bool; // false
    public var time : Float; // 0
    public function updateAnimation(delta:Float) : Void;
}
// +BEGIN src/objects/MorphAnimMesh.js


// +BEGIN src/objects/Particle.js
@:native("THREE.Particle")
extern class Particle extends Object3D {
    public var material : Material;
    public function new(material:Material) : Void;
}
// +END src/objects/Particle.js


// +BEGIN src/objects/ParticleSystem.js
@:native("THREE.ParticleSystem")
extern class ParticleSystem extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public var sortParticles : Bool; // false
    public function new(geometry:Geometry, material:Material) : Void;
}
// +END src/objects/ParticleSystem.js


// +BEGIN src/objects/Ribbon.js
@:native("THREE.Ribbon")
extern class Ribbon extends Object3D {
    public var geometry : Geometry;
    public var material : Material;
    public function new(geometry:Geometry, material:Material) : Void;
}
// +END src/objects/Ribbon.js


// +BEGIN src/objects/SkinnedMesh.js
@:native("THREE.SkinnedMesh")
extern class SkinnedMesh extends Mesh {
    public var identityMatrix : Matrix4;
    public var bones : Array<Bone>;
    public var bonesMatrices : Float32Array;
    public function addBone(bone:Bone) : Bone;
    //override public function updateMatrixWorld(force:Bool) : Void;
    public function pose() : Void;
}
// +END src/objects/SkinnedMesh.js


// +BEGIN src/objects/Sprite.js

@:native("THREE.Sprite")
extern class Sprite extends Object3D {
    public var color : Color; // new Color(parameters.color) | new Color(0xffffff)
    public var map : Texture; // parameters.map | new Texture()
    public var blending : Int; // parameters.blending | Blending.Normal
    public var useScreenCoordinates : Bool; // parameters.useScreenCoordinates | true
    public var mergeWith3D : Bool; // parameters.mergeWith3D | !useScreenCoordinates
    public var affectedByDistance : Bool; // parameters.affectedByDistance | !useScreenCoordinates
    public var scaleByViewport : Bool; // parameters.scaleByViewport | !affectedByDistance
    public var alignment : Vector2; // parameters.alignment | SpriteAlign.center
    public var rotation3d : Float; // this.rotation
    public var opacity : Float; // 1
    public var uvOffset : Vector2; // (0,0)
    public var uvScale : Vector2; // (1,1)
    public function new(parameters:Dynamic) : Void;
    // override public function updateMatrix() : Void
}

class SpriteAlign {
    public static var topLeft = new Vector2(1, -1);
    public static var topCenter = new Vector2(0, -1);
    public static var topRight = new Vector2(-1, -1);
    public static var centerLeft = new Vector2(1, 0);
    public static var center = new Vector2(0, 0);
    public static var centerRight = new Vector2(-1, 0);
    public static var bottomLeft = new Vector2(1, 1);
    public static var bottomCenter = new Vector2(0, 1);
    public static var bottomRight = new Vector2(-1, 1);
}

// +END src/objects/Sprite.js


// +BEGIN src/scenes/Scene.js

@:native("THREE.Scene")
extern class Scene extends Object3D {
    public var fog : Fog;
    public var overrideMaterial : Material; // TODO: ensure type and usefulness
    public var objects : Array<Object3D>;
    public var lights : Array<Light>;
    public function new() : Void;
    public function addObject(o:Object3D) : Void;
    public function removeObject(o:Object3D) : Void;
}

// +END src/scenes/Scene.js


// +BEGIN src/scenes/Fog.js

@:native("THREE.Fog")
extern class Fog {
    public var color : Color;
    public var near : Float; // 1
    public var far : Float; // 1000
    public function new(hex:Int, ?near:Float, ?far:Float) : Void;
}

// +END src/scenes/Fog.js


// +BEGIN src/scenes/FogExp2.js

@:native("THREE.FogExp2")
extern class FogExp2 {
    public var color : Color;
    public var density : Float; // 0.00025
    public function new(hex:Int, ?density:Float) : Void;
}

// +END src/scenes/FogExp2.js


interface Renderer {
    function setSize(w:Int, h:Int) : Void;
    public var domElement : js.Dom.HtmlDom;
    // public function render(scene:Scene, camera:Camera) : Void;
    // public function render(scene:Scene, camera:Camera, ?renderTarget:WebGLRenderTarget, ?forceClear:Bool) : Void;
}


// +BEGIN src/renderers/CanvasRenderer.js
@:native("THREE.CanvasRenderer")
extern class CanvasRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public var autoClear : Bool; // true
    public var sortObjects : Bool; // true
    public var sortElements : Bool; // true
    public var infos : { render:{vertices:Int, faces:Int} };
    public function new(?parameters:Dynamic) : Void;
    public function setSize(width:Int, height:Int) : Void;
    public function setClearColor(color:Color, opacity:Float) : Void;
    public function setClearColorHex(hex:Int, opacity:Float) : Void;
    public function clear() : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
// +END src/renderers/CanvasRenderer.js


// +BEGIN src/renderers/DOMRenderer.js
@:native("THREE.DOMRenderer")
extern class DOMRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public function new() : Void;
    public function setSize(width:Int, height:Int) : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}
// +END src/renderers/DOMRenderer.js


// +BEGIN src/renderers/RenderableFace3.js
@:native("THREE.RenderableFace3") extern class RenderableFace3 {
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var v3 : RenderableVertex;
    public var centroidWorld : Vector3;
    public var centroidScreen : Vector3;
    public var normalWorld : Vector3;
    public var vertexNormalsWorld : Array<Vector3>;
    public var material : Material;
    public var faceMaterial : Material;
    public var uvs : Array<Array<Dynamic>>; //TODO
    public var z : Float;
    public function new() : Void;
}
// +END src/renderers/RenderableFace3.js


// +BEGIN src/renderers/RenderableFace4.js
@:native("THREE.RenderableFace4") extern class RenderableFace4 {
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var v3 : RenderableVertex;
    public var v4 : RenderableVertex;
    public var centroidWorld : Vector3;
    public var centroidScreen : Vector3;
    public var normalWorld : Vector3;
    public var vertexNormalsWorld : Array<Vector3>;
    public var material : Material;
    public var faceMaterial : Material;
    public var uvs : Array<Array<Dynamic>>; //TODO
    public var z : Float;
    public function new() : Void;
}
// +END src/renderers/RenderableFace4.js

// +BEGIN src/renderers/RenderableLine.js
@:native("THREE.RenderableLine") extern class RenderableLine {
    public var z : Float;
    public var v1 : RenderableVertex;
    public var v2 : RenderableVertex;
    public var material : Material;
    public function new() : Void;
}
// +END src/renderers/RenderableLine.js

// +BEGIN src/renderers/RenderableObject.js
@:native("THREE.RenderableObject") extern class RenderableObject {
    public var object : Dynamic; // TODO: Object3D?
    public var z : Float;
    public function new() : Void;
}
// +END src/renderers/RenderableObject.js

// +BEGIN src/renderers/RenderableParticle.js
@:native("THREE.RenderableParticle") extern class RenderableParticle {
    public var x : Float;
    public var y : Float;
    public var z : Float;
    public var rotation : Dynamic; // TODO
    public var scale : Vector2;
    public var material : Material;
    public function new() : Void;
}
// +END src/renderers/RenderableParticle.js


// +BEGIN src/renderers/RenderableVertex.js
@:native("THREE.RenderableVertex") extern class RenderableVertex {
    public var positionWorld : Vector3;
    public var positionScreen : Vector4;
    public function new() : Void;
    public function copy(v:RenderableVertex) : Void;
}
// +END src/renderers/RenderableVertex.js


// +BEGIN src/renderers/SVGRenderer.js

@:native("THREE.SVGRenderer")
extern class SVGRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom;
    public var autoClear : Bool; // true
    public var sortObjects : Bool; // true
    public var sortElements : Bool; // true
    public var info : { render:{vertices:Int, faces:Int} };
    public function new() : Void;
    public function setQuality(q:String) : Void; // high / low
    public function setSize(width:Int, height:Int) : Void;
    public function clear() : Void;
    public function render(scene:Scene, camera:Camera) : Void;
}

// +END src/renderers/SVGRenderer.js


@:native("THREE.WebGLContext")
extern class WebGLContext {
}


// +BEGIN src/renderers/WebGLRenderer.js

@:native("THREE.WebGLRenderer")
extern class WebGLRenderer implements Renderer {
    public var domElement : js.Dom.HtmlDom; // canvas
    public var context : WebGLContext; // initGL()
    public var autoClear : Bool; // true
    public var autoClearColor : Bool; // true
    public var autoClearDepth : Bool; // true
    public var autoClearStencil : Bool; // true
    public var sortObjects : Bool; // true
    public var autoUpdateObjects : Bool; // true
    public var autoUpdateScene : Bool; // true
    public var gammaInput : Bool; // false
    public var gammaOutput : Bool; // false
    public var physicallyBasedShading : Bool; // false
    public var shadowMapEnabled : Bool; // false
    public var shadowMapAutoUpdate : Bool; // true
    public var shadowMapSoft : Bool; // true
    public var shadowMapCullFrontFaces : Bool; // true
    public var maxMorphTargets : Int; // 8
    public var autoScaleCubemaps : Bool; // true
    public var renderPluginsPre : Array<Dynamic>; // TODO
    public var renderPluginsPost : Array<Dynamic>; // TODO
    public var info : {
        memory:{ programs:Int, geometries:Int, textures:Int },
        render:{ calls:Int, vertices:Int, faces:Int, points:Int }
    };
    public function new(?parameters:Dynamic) : Void;
    public function getContext() : WebGLContext;
    public function supportsVertexTextures() : Bool;
    public function setSize(width:Int, height:Int) : Void;
    public function setViewport(x:Float, y:Float, width:Float, height:Float) : Void;
    public function setScissor(x:Float, y:Float, width:Float, height:Float) : Void;
    public function enableScissorTest(enable:Bool) : Void;
    public function setClearColorHex(hexColor:Int, opacity:Float) : Void;
    public function setClearColor(color:Color, opacity:Float) : Void;
    public function getClearColor() : Color;
    public function getClearAlpha() : Float;
    public function clear(color:Bool, depth:Bool, stencil:Bool) : Void;
    public function clearTarget(renderTarget:WebGLRenderTarget, color:Bool, depth:Bool, stencil:Bool) : Void;
    public function addPostPlugin(plugin:Dynamic) : Void; // TODO
    public function addPrePlugin(plugin:Dynamic) : Void; // TODO
    public function deallocateObject(object:Object3D) : Void;
    public function deallocateTexture(texture:Texture) : Void;
    public function updateShadowMap(scene:Scene, camera:Camera) : Void;
    public function render(scene:Scene, camera:Camera, ?renderTarget:WebGLRenderTarget, ?forceClear:Bool) : Void;
    // There are more methods, mainly private ones
}

// +END src/renderers/WebGLRenderer.js


// +BEGIN src/renderers/WebGLRenderTarget.js

@:native("THREE.WebGLRenderTarget")
extern class WebGLRenderTarget {
    public var width : Int;
    public var height : Int;
    public var wrapS : Int; // Wrapping.ClampToEdge
    public var wrapT : Int; // Wrapping.ClampToEdge
    public var magFilter : Int; // Filter.Linear
    public var minFilter : Int; // Filter.LinearMipMapLinear
    public var offset : Vector2; // (0,0)
    public var repeat : Vector2; // (1,1)
    public var format : Int; // RGBAFormat
    public var type : Int; // Type.UnsignedByte
    public var depthBuffer : Bool; // true
    public var stencilBuffer : Bool; // true
    public var generateMipmaps : Bool; // true
    public function new(width:Float, height:Float, ?options:Dynamic) : Void;
    public function clone() : WebGLRenderTarget;
}

// +END src/renderers/WebGLRenderTarget.js


// +BEGIN src/renderers/WebGLRenderTargetCube.js

@:native("THREE.WebGLRenderTargetCube")
extern class WebGLRenderTargetCube extends WebGLRenderTarget {
    var activeCubeFace : Int; // PX 0, NX 1, PY 2, NY 3, PZ 4, NZ 5
    public function new(width:Float, height:Float, ?options:Dynamic) : Void;
}

// +END src/renderers/WebGLRenderTargetCube.js


// +BEGIN src/renderers/WebGLShaders.js

// Not usefull in the API, we may prefer to remove it
@:native("THREE.ShaderChunk")
extern class WebGLShaders {
    // FOG
    public static var fog_pars_fragment : String;
    public static var fog_fragment : String;
    // ENVIRONMENT MAP
    public static var envmap_pars_fragment : String;
    public static var envmap_fragment : String;
    public static var envmap_pars_vertex : String;
    public static var envmap_vertex : String;
    // COLOR MAP (particles)
    public static var map_particle_pars_fragment : String;
    public static var map_particle_fragment : String;
    // COLOR MAP (triangles)
    public static var map_pars_vertex : String;
    public static var map_pars_fragment : String;
    public static var map_vertex : String;
    public static var map_fragment : String;
    // LIGHT MAP
    public static var lightmap_pars_fragment : String;
    public static var lightmap_pars_vertex : String;
	public static var lightmap_fragment : String;
	public static var lightmap_vertex : String;
	// LIGHTS LAMBERT
	public static var lights_lambert_pars_vertex : String;
	public static var lights_lambert_vertex : String;
	// LIGHTS PHONG
	public static var lights_phong_pars_vertex : String;
	public static var lights_phong_vertex : String;
	public static var lights_phong_pars_fragment : String;
	public static var lights_phong_fragment : String;
	// VERTEX COLORS
	public static var color_pars_fragment : String;
    public static var color_fragment : String;
	public static var color_pars_vertex : String;
	public static var color_vertex : String;
	// SKINNING
    public static var skinning_pars_vertex : String;
	public static var skinning_vertex : String;
	// MORPHING
	public static var morphtarget_pars_vertex : String;
	public static var morphtarget_vertex : String;
	public static var default_vertex : String;
	// SHADOW MAP
    public static var shadowmap_pars_fragment : String;
	public static var shadowmap_fragment : String;
    public static var shadowmap_pars_vertex : String;
	public static var shadowmap_vertex : String;
	// ALPHATEST
	public static var alphatest_fragment : String;
	// LINEAR SPACE
    public static var linear_to_gamma_fragment : String;
}

@:native("THREE.UniformsUtils")
extern class UniformsUtils {
    public static function merge(a:Array<UniformsUtils>) : Dynamic ;
    public static function clone(a:Dynamic) : Dynamic;
}

@:native("THREE.UniformsLib")
extern class UniformsLib {
    public static var common : Dynamic;
    public static var fog : Dynamic;
    public static var lights : Dynamic;
    public static var particle : Dynamic;
    public static var shadowmap : Dynamic;
}

@:native("THREE.ShaderLib")
extern class ShaderLib {
    public static var sprite : { vertexShader:String, fragmentShader:String };
    public static var depth : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var normal : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var basic : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var lambert : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var phong : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var particle_basic : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
    public static var depthRGBA : { uniforms:Dynamic, vertexShader:String, fragmentShader:String };
}

// +END src/renderers/WebGLShaders.js




// +BEGIN src/extras/animation/Animation.js
@:native("THREE.Animation")
extern class Animation {
    public var root : Mesh;
    public var data : Dynamic; // TODO: find a type for THREE.AnimationHandler.get(data)
    public var hierarchy : Array<Bone>; // TODO: ensure type
    public var currentTime : Float; // 0
    public var timeScale : Float; // 1
    public var isPlaying : Bool; // false
    public var isPaused : Bool; // true
    public var loop : Bool; // true
    public var interpolationType : Int; // AnimationHandler.LINEAR
    public var JITCompile : Bool; // true
    public var points : Array<Array<Float>>;
    public var target : Vector3;
    public function new(root:Mesh, data:String, ?interpolationType:Int /* AnimationHandler statics vars */, ?jitCompile:Bool) : Void;
    public function play(loop:Bool, startTimeMS:Float) : Void;
    public function pause() : Void;
    public function stop() : Void;
    public function update(deltaTimeMS: Float) : Void;
}
// +END src/extras/animation/Animation.js


// +BEGIN src/extras/animation/AnimationHandler.js
@:native("THREE.AnimationHandler")
extern class AnimationHandler {
    public static var LINEAR = 0;
    public static var CATMULLROM = 1;
    public static var CATMULLROM_FORWARD = 2;

    public static function update(deltaTimeMS:Float) : Void;
    public static function addToUpdate(animation:Animation) : Void;
    public static function removeFromUpdate(animation:Animation) : Void;
    public static function add(data:Dynamic) : Void; // data = { name:String, initialized:Bool, hierarchy:Array<Bone>??, length:Float, fps:Float }
    public static function get(name:String) : Dynamic; // data
    public static function parse(root:Mesh) : Dynamic; // hierarchie = Array<Bone> ?
}
// +END src/extras/animation/AnimationHandler.js


// +BEGIN src/extras/animation/AnimationMorphTarget.js
@:native("THREE.AnimationMorphTarget")
extern class AnimationMorphTarget {
    var root : Mesh; // TODO: ensure type
    var data : Dynamic; // TODO: Type of AnimationHandler.get(data)
    var hierarchy : Dynamic; // TODO: Type of AnimationHandler.parse(root)
    var currentTime : Float; // 0
    var timeScale : Float; // 1
    var isPlaying : Bool; // false
    var isPaused : Bool; // true
    var loop : Bool; // true
    var influence : Float; // 1
    public function new(root:Mesh, data:Dynamic) : Void;
    public function play(loop:Bool, startTimeMS:Float) : Void;
    public function pause() : Void;
    public function stop() : Void;
    public function update(deltaTimeMS:Float) : Void;
}
// +END src/extras/animation/AnimationMorphTarget.js


// +BEGIN src/extras/animation/KeyFrameAnimation.js
@:native("THREE.KeyFrameAnimation")
extern class KeyFrameAnimation {
    public var root : Dynamic; // TODO (Mesh?)
    public var data : Dynamic; // AnimationHandler.get(data)
    public var hierarchy : Array<Dynamic>; // AnimationHandler.parse(root)
    public var currentTime : Float; // 0
    public var timeScale : Float; // 0.001
    public var isPlaying : Bool; // false
    public var isPaused : Bool;
    public var loop : Bool; // true
    public var JITCompile : Bool; // true
    public function new(root:Dynamic, data:Dynamic, ?jitCompile:Bool) : Void;
    public function play(?loop:Bool, ?startTimeMS:Float) : Void;
    public function pause() : Void;
    public function stop() : Void;
    public function update(deltaTimeMS:Float) : Void;
}
// +END src/extras/animation/KeyFrameAnimation.js


// +BEGIN src/extras/cameras/CombinedCamera.js
@:native("THREE.CombinedCamera")
extern class CombinedCamera extends Camera {
    public var fov : Float;
    public var left : Float;
    public var right : Float;
    public var top : Float;
    public var bottom : Float;
    public var cameraO : OrthographicCamera;
    public var cameraP : PerspectiveCamera;
    public var zoom : Float;
    public var near : Float;
    public var far : Float;
    public var inPersepectiveMode : Bool;
    public var inOrthographicMode : Bool;
    public function new(width:Int, height:Int, ?fov:Float, ?near:Float, ?far:Float, ?orthonear:Float, ?orthofar:Float) : Void;
    public function toPerspective() : Void;
    public function toOrthographic() : Void;
    public function setFov(fov:Float) : Void;
    public function setLens(focalLength:Float, framesize:Float) : Float;
    public function setZoom(zoom:Float) : Void;
    public function toFrontView() : Void;
    public function toBackView() : Void;
    public function toLeftView() : Void;
    public function toRightView() : Void;
    public function toTopView() : Void;
    public function toBottomView() : Void;
}
// +END src/extras/cameras/CombinedCamera.js


// +BEGIN src/extras/cameras/CubeCamera.js
@:native("THREE.CubeCamera")
extern class CubeCamera {
    public var heightOffset : Float;
    public var position : Vector3;
    public function new(near:Float, far:Float, heightOffset:Float, cubeResolution:Float) : Void;
    public function updatePosition(newPos:Vector3) : Void;
    public function updateCubeMap(renderer:Renderer, scene:Scene) : Void;
}
// +END src/extras/cameras/CubeCamera.js


// +BEGIN src/extras/cameras/FirstPersonCamera.js
// deprecated, use FirstPersonControls
// +END src/extras/cameras/FirstPersonCamera.js


// +BEGIN src/extras/cameras/FlyCamera.js
// deprecated, use FlyControls
// +END src/extras/cameras/FlyCamera.js


// +BEGIN src/extras/cameras/PathCamera.js
// deprecated, use PathControls
// +END src/extras/cameras/PathCamera.js


// +BEGIN src/extras/cameras/RollCamera.js
// deprecated, use RollControls
// +END src/extras/cameras/RollCamera.js


// +BEGIN src/extras/cameras/TrackballCamera.js
// deprecated, use TrackballControls
// +END src/extras/cameras/TrackballCamera.js


// +BEGIN src/extras/ColorUtils.js
@:native("THREE.ColorUtils")
extern class ColorUtils {
    public static function adjustHSV(color:Color, h:Float, s:Float, v:Float) : Void;
    public static function rgbToHsv(color:Color, ?hsv:{h:Float, s:Float, v:Float}) : {h:Float, s:Float, v:Float};
}
// +END src/extras/ColorUtils.js


// +BEGIN src/extras/controls/FirstPersonControls.js
// TODO: Test this
@:native("THREE.FirstPersonControls")
extern class FirstPersonControls {
    public var object : Object3D;
    public var target : Vector3;
    public var domElement : js.Dom.HtmlDom;
    public var movementSpeed : Float; // 1.0
    public var lookSpeed : Float; // 0.005
    public var noFly : Bool; // false
    public var lookVertical : Bool; // true
    public var autoForward : Bool; // false
    public var activeLook : Bool; // true
    public var heightSpeed : Bool; // false;
    public var heightCoef : Float; // 1.0
    public var heightMin : Float; // 0.0
    public var constrainVertical : Bool; // false
    public var verticalMin : Float; // 0
    public var verticalMax : Float; // Math.PI
    public var autoSpeedFactor : Float; // 0
    // these variables should be manipulated but you can try things :)
    public var mouseX : Float;
    public var mouseY : Float;
    public var lat : Float;
    public var lon : Float;
    public var phi : Float;
    public var theta : Float;
    public var moveForward : Bool;
    public var moveBackward : Bool;
    public var moveLeft : Bool;
    public var moveRight : Bool;
    public var freeze : Bool;
    public var mouseDragOn : Bool;
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function update(delta:Float) : Void;
}
// +END src/extras/controls/FirstPersonControls.js


// +BEGIN src/extras/controls/FlyControls.js
@:native("THREE.FlyControls")
extern class FlyControls {
    public var object : Object3D;
    public var domElement : js.Dom.HtmlDom;
    public var movementSpeed : Float; // 1.0
    public var rollSpeed : Float; // 0.005
    public var dragToLook : Bool; // false
    public var autoForward : Bool; // false
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function update(delta:Float) : Void;
}
// +END src/extras/controls/FlyControls.js


// +BEGIN src/extras/controls/PathControls.js
@:native("THREE.PathControls")
extern class PathControls {
    public var object : Object3D;
    public var domElement : js.Dom.HtmlDom;
    public var id : String;
    public var duration : Int; // 10*1000 millis
    public var waypoints : Array<Mesh>;
    public var useConstantSpeed : Bool; // true
    public var resamplingCoef : Float; // 50
    public var debugPath : Object3D;
    public var debugDummy : Object3D;
    public var animationParent : Object3D;
    public var lookSpeed : Float; // 0.005
    public var lookVertical : Bool; // true
    public var lookHorizontal : Bool; // true
    public var verticalAngleMap : { srcRange:Array<Float>, dstRange:Array<Float> };
    public var horizontalAngleMap : { srcRange:Array<Float>, dstRange:Array<Float> };
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function init() : Void;
    public function update(delta:Float) : Void;
}
// +END src/extras/controls/PathControls.js


// +BEGIN src/extras/controls/RollControls.js
@:native("THREE.RollControls")
extern class RollControls {
    public var object : Object3D;
    public var domElement : js.Dom.HtmlDom;
    public var mouseLook : Bool; // true
    public var autoForward : Bool; // false
    public var lookSpeed : Float; // 1
    public var movementSpeed : Float; // 1
    public var rollSpeed : Float; // 1
    public var constrainVertical : Array<Float>; // [-0.9, 0.9]
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function update(delta:Float) : Void;
    public function translateX(distance:Float) : Void;
    public function translateY(distance:Float) : Void;
    public function translateZ(distance:Float) : Void;
    public function rotateHorizontally(amount:Float) : Void;
    public function rotateVertically(amount:Float) : Void;
}
// +END src/extras/controls/RollControls.js


// +BEGIN src/extras/controls/TrackballControls.js
@:native("THREE.TrackballControls")
extern class TrackballControls {
    public var object : Object3D;
    public var domElement : js.Dom.HtmlDom;
    public var enabled : Bool;
    public var screen : { width:Int, height:Int, offsetLeft:Int, offsetTop:Int };
    public var radius : Float;
    public var rotateSpeed : Float; // 1
    public var zoomSpeed : Float; // 1.2
    public var panSpeed : Float; // 0.3
    public var noRotate : Bool; // false
    public var noZoom : Bool; // false
    public var staticMoving : Bool; // false
    public var dynamicDampingFactor : Float; // 0.2
    public var minDistance : Float; // 0
    public var maxDistance : Float; // Infinity
    public var keys : Array<Int>; // [65 A, 83 S, 68 D]
    public function new(object:Object3D, ?domElement:js.Dom.HtmlDom) : Void;
    public function getMouseOnScreen(clientX:Int, clientY:Int) : Vector2;
    public function getMouseProjectionOnBall(clientX:Int, clientY:Int) : Vector3;
    public function update() : Void;
}
// +END src/extras/controls/TrackballControls.js


// +BEGIN src/extras/core/BufferGeometry.js
@:native("THREE.BufferGeometry")
extern class BufferGeometry {
    public function new() : Void;
    public function computeBoundingBox() : Void;
    public function computeBoundingSphere() : Void;
}
// +END src/extras/core/BufferGeometry.js


// +BEGIN src/extras/core/Curve.js
// abstract Curve base class
@:native("THREE.Curve")
extern class Curve {
    public function new() : Void;
    public function getPoint(t:Float) : Vector2;
    public function getPointAt(u:Float) : Vector2;
    public function getPoints(divisions:Int) : Array<Vector2>;
    public function getSpacedPoints(divisions:Int) : Array<Vector2>;
    public function getLength() : Float;
    public function getLengths(divisions:Int) : Array<Float>;
    public function getUtoTmapping(u:Float, ?distance:Float) : Float;
    public function getNormalVector(t:Float) : Vector2;
    public function getTangent(t:Float) : Vector2;
    public function getTangentAt(u:Float) : Vector2;
}

@:native("THREE.LineCurve")
extern class LineCurve extends Curve {
    public var v1 : Vector2;
    public var v2 : Vector2;
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float): Void {})
    public function new(v1:Vector2, v2:Vector2) : Void;
}

@:native("THREE.QuadraticBezierCurve")
extern class QuadraticBezierCurve extends Curve {
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float) : Void {})
    public function new(v0:Vector2, v1:Vector2, v2:Vector2) : Void;
}

@:native("THREE.CubicBezierCurve")
extern class CubicBezierCurve extends Curve {
    @:overload(function(x0:Float, y0:Float, x1:Float, y1:Float, x2:Float, y2:Float, x3:Float, y3:Float) : Void {})
    public function new(v0:Vector2, v1:Vector2, v2:Vector2, v4:Vector2) : Void;
}

@:native("THREE.SplineCurve")
extern class SplineCurve extends Curve {
    public function new(?points:Array<Vector2>) : Void;
}

@:native("THREE.ArcCurve")
extern class ArcCurve extends Curve {
    public function new(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
}

// src/extras/core/Curve.js also contains THREE.Curve.Utils

// TODO: getPoint() and cie will returns Vector3 objects for these 3D curves, we may haxe to rework the API

@:native("THREE.LineCurve3") extern class LineCurve3 extends Curve {
    public function new(v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.QuadraticBezierCurve3") extern class QuadraticBezierCurve3 extends Curve {
    public function new(v0:Vector3, v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.CubicBezierCurve3") extern class CubicBezierCurve3 extends Curve {
    public function new(v0:Vector3, v1:Vector3, v2:Vector3) : Void;
}

@:native("THREE.SplineCurve3") extern class SplineCurve3 extends Curve {
    public function new(?points:Array<Vector3>) : Void;
}
// +END src/extras/core/Curve.js


// +BEGIN src/extras/core/CurvePath.js
@:native("THREE.CurvePath")
extern class CurvePath extends Curve {
    public var curves : Array<Curve>;
    public var bends : Array<Path>;
    public var autoClose : Bool; // false
    public function new() : Void;
    public function add(curve:Curve) : Void;
    public function checkConnection() : Void;
    public function closePath() : Void;
    // override public function getPoint(t:Float) : Vector3;
    // override public function getLength() : Float;
    public function getCurveLengths() : Array<Float>;
    public function getBoundingBox() : { minX:Float, minY:Float, maxX:Float, maxY:Float, centroid:Vector2 };
    public function createPointsGeometry(divisions:Int) : Geometry;
    public function createSpacedPointsGeometry(divisions:Int) : Geometry;
    public function createGeometry(points:Array<Vector2>) : Geometry;
    public function addWrapPath(bendpath:Path) : Void;
    public function getTransformedPoints(segments:Int, bends:Array<Path>) : Array<Vector2>;
    public function getTransformedSpacedPoints(segments:Int, bends:Array<Path>) : Array<Vector2>;
    public function getWrapPoints(oldPts:Array<Vector2>, path:Path) : Array<Vector2>;
}
// +END src/extras/core/CurvePath.js


// +BEGIN src/extras/core/Gyroscope.js
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
// +END src/extras/core/Gyroscope.js

// +BEGIN src/extras/core/Path.js
@:native("THREE.Path")
extern class Path extends CurvePath {
    public function new(?points:Array<Vector2>) : Void;
    public function fromPoints(points:Array<Vector2>) : Void;
    public function moveTo(x:Float, y:Float) : Void;
    public function lineTo(x:Float, y:Float) : Void;
    public function quadraticCurveTo(aCPx:Float, aCPy:Float, aX:Float, aY:Float) : Void;
    public function bezierCurveTo(aCP1x:Float, aCP1y:Float, aCP2x:Float, aCP2y:Float, aX:Float, aY:Float) : Void;
    public function splineThru(pts:Array<Vector2>) : Void;
    public function arc(aX:Float, aY:Float, aRadius:Float, aStartAngle:Float, aEndAngle:Float, aClockWise:Bool) : Void;
    // override public function getSpacedPoints(?divisions:Int, closePath:Bool) : Array<Vector2>;
    // override public function getPoints(?divisions:Int, closePath:Bool) : Array<Vector2>;
    public function debug(canvas:js.Dom.HtmlDom) : Void;
    public function toShapes() : Array<Shape>;
}
// +END src/extras/core/Path.js


// +BEGIN src/extras/core/Shape.js
@:native("THREE.Shape")
extern class Shape extends Path {
    public var holes :Array<Vector2>;
    public function new() : Void;
    public function extrude(options:Dynamic) : ExtrudeGeometry;
    public function getPointsHoles(divisions:Int) : Array<Vector2>;
    public function getSpacedPointsHoles(divisions:Int) : Array<Vector2>;
    public function extractAllPoints(divisions:Int) : { shape:Array<Vector2>, holes:Array<Vector2> };
    public function extractAllSpacedPoints(divisions:Int) : { shape:Array<Vector2>, holes:Array<Vector2> };
}
// src/extras/core/Shape.js also contains THREE.Shape.Utils
// +END src/extras/core/Shape.js


// +BEGIN src/extras/core/TextPath.js
@:native("THREE.TextPath")
extern class TextPath extends Path {
    public var parameters : Dynamic;
    public function new(text:String, ?parameters:Dynamic) : Void;
    public function set(text:String, parameters:Dynamic) : Void;
}
// +END src/extras/core/TextPath.js


// +BEGIN src/extras/geometries/CubeGeometry.js

typedef CubeGeometrySides = {
    px:Bool,
    nx:Bool,
    py:Bool,
    ny:Bool,
    pz:Bool,
    nz:Bool
};

@:native("THREE.CubeGeometry")
extern class CubeGeometry extends Geometry {
    var sides : CubeGeometrySides;
    @:overload(function(width:Float, height:Float, depth:Float, ?segmentsWidth:Float, ?segmentsHeight:Float, ?segmentsDepth:Float, ?material:Material, ?sides:CubeGeometrySides) : Void {})
    public function new(width:Float, height:Float, depth:Float, ?segmentsWidth:Float, ?segmentsHeight:Float, ?segmentsDepth:Float, ?materials:Array<Material>, ?sides:CubeGeometrySides) : Void;
}
// +END src/extras/geometries/CubeGeometry.js


// +BEGIN src/extras/geometries/CylinderGeometry.js
@:native("THREE.CylinderGeometry")
extern class CylinderGeometry extends Geometry {
    public function new(?radiusTop:Float, ?radiusBottom:Float, ?height:Float, ?segmentsRadius:Float, ?segmentsHeight:Float, ?openEnded:Bool) : Void;
}
// +END src/extras/geometries/CylinderGeometry.js


// +BEGIN src/extras/geometries/ExtrudeGeometry.js
@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends Geometry {
    /**
     * @author zz85 / http://www.lab4games.net/zz85/blog
     *
     * Creates extruded geometry from a path shape.
     *
     * parameters = {
     *
     *  size: 			<float>, 	// size of the text
     *  height: 		<float>, 	// thickness to extrude text
     *  curveSegments: 	<int>,		// number of points on the curves
     *  steps: 			<int>,		// number of points for z-side extrusions
     *
     *  font: 			<string>,		// font name
     *  weight: 		<string>,		// font weight (normal, bold)
     *  style: 			<string>,		// font style  (normal, italics)
     *
     *  bevelEnabled:	<bool>,			// turn on bevel
     *  bevelThickness: <float>, 		// how deep into text bevel goes
     *  bevelSize:		<float>, 		// how far from text outline is bevel
     *  bevelSegments:	<int>, 			// number of bevel layers
     *
     *  extrudePath:	<THREE.CurvePath>	// path to extrude shape along
     *  bendPath:		<THREE.CurvePath> 	// path to bend the geometry around
     *
     *  material:		 <THREE.Material>	// material for front and back faces
     *  extrudeMaterial: <THREE.Material>	// material for extrusion and beveled faces
     *
     *  }
     **/
    public function new(?shapes:Array<Shape>, ?options:Dynamic) : Void;
    public function addShape(shape:Shape, options:Dynamic) : Void;
}
// +END src/extras/geometries/ExtrudeGeometry.js


// +BEGIN src/extras/geometries/IcosahedronGeometry.js
@:native("THREE.IcosahedronGeometry")
extern class IcosahedronGeometry extends Geometry {
    public function new(?subdivisions:Int) : Void;
}
// +END src/extras/geometries/IcosahedronGeometry.js


// +BEGIN src/extras/geometries/LatheGeometry.js
@:native("THREE.LatheGeometry")
extern class LatheGeometry extends Geometry {
    public var steps : Int;
    public var angle : Float;
    public function new(points:Array<Vector3>, ?steps:Int, ?angle:Float) : Void;
}
// +END src/extras/geometries/LatheGeometry.js


// +BEGIN src/extras/geometries/OctahedronGeometry.js
@:native("THREE.OctahedronGeometry")
extern class OctahedronGeometry extends Geometry {
    public function new(radius:Float, ?detail:Int) : Void;
}
// +END src/extras/geometries/OctahedronGeometry.js


// +BEGIN src/extras/geometries/PlaneGeometry.js
@:native("THREE.PlaneGeometry")
extern class PlaneGeometry extends Geometry {
    public function new(width:Float, height:Float, ?segmentsWidth:Float, ?segmentsHeight:Float) : Void;
}
// +END src/extras/geometries/PlaneGeometry.js


// +BEGIN src/extras/geometries/SphereGeometry.js
@:native("THREE.SphereGeometry")
extern class SphereGeometry extends Geometry {
    public function new(?radius:Float, ?segmentsWidth:Float, ?segmentsHeight:Float, ?phiStrat:Float, ?phiLength:Float, ?thetaStart:Float, ?thetaLength:Float) : Void;
}
// +END src/extras/geometries/SphereGeometry.js


// +BEGIN src/extras/geometries/TextGeometry.js
@:native("THREE.TextGeometry")
extern class TextGeometry extends ExtrudeGeometry {
    /**
     * @author zz85 / http://www.lab4games.net/zz85/blog
     * @author alteredq / http://alteredqualia.com/
     *
     * For creating 3D text geometry in three.js
     *
     * Text = 3D Text
     *
     * parameters = {
     *  size: 			<float>, 	// size of the text
     *  height: 		<float>, 	// thickness to extrude text
     *  curveSegments: 	<int>,		// number of points on the curves
     *
     *  font: 			<string>,		// font name
     *  weight: 		<string>,		// font weight (normal, bold)
     *  style: 			<string>,		// font style  (normal, italics)
     *
     *  bevelEnabled:	<bool>,			// turn on bevel
     *  bevelThickness: <float>, 		// how deep into text bevel goes
     *  bevelSize:		<float>, 		// how far from text outline is bevel
     *
     *  bend:			<bool>			// bend according to hardcoded curve (generates bendPath)
     *  bendPath:       <curve>         // wraps text according to bend Path
     *  }
     *
     * It uses techniques used in:
     *
     * 	typeface.js and canvastext
     * 		For converting fonts and rendering with javascript
     *		http://typeface.neocracy.org
     *
     *	Triangulation ported from AS3
     *		Simple Polygon Triangulation
     *		http://actionsnippet.com/?p=1462
     *
     * 	A Method to triangulate shapes with holes
     *		http://www.sakri.net/blog/2009/06/12/an-approach-to-triangulating-polygons-with-holes/
     *
     */
    /*	Usage Examples

	// TextGeometry wrapper

	var text3d = new TextGeometry( text, options );

	// Complete manner

	var textPath = new THREE.TextPath( text, options );
	var textShapes = textPath.toShapes();
	var text3d = new ExtrudeGeometry( textShapes, options );

    */
    public function new(text:String, ?parameters:Dynamic) : Void;
}

typedef FontData = {
    familyName:String,
    cssFontWeight:String,
    cssFontStyle:String,
    glyphs : Dynamic //
};

@:native("THREE.FontUtil")
extern class FontUtils {
    static var faces : Dynamic;
    static var face : String;
    static var weight : String;
    static var style : String;
    static var size : Float;
    static var divisions : Int;
    static function getFace() : Dynamic;
    static function loadFace(data:FontData) : FontData;
    static function drawText(text:String) : { paths:Array<Path>, offset:Float };
    static function extractGlyphPoints(c:String, face:Dynamic, scale:Float, offset:Float, path:Path) : { offset:Float, points:Array<Vector2>, path:Path };
}
// +END src/extras/geometries/TextGeometry.js


// +BEGIN src/extras/geometries/TorusGeometry.js
@:native("THREE.TorusGeometry")
extern class TorusGeometry extends Geometry {
    public function new(?radius:Float, ?tube:Float, ?segmentsR:Int, ?segmentsT:Int, ?arc:Float) : Void;
}
// +END src/extras/geometries/TorusGeometry.js


// +BEGIN src/extras/geometries/TorusKnotGeometry.js
@:native("THREE.TorusKnotGeometry")
extern class TorusKnotGeometry extends Geometry {
    public function new(?radius:Float, ?tube:Float, ?segmentsR:Int, ?segmentsT:Int, ?p:Float, q:Float, ?heightScale:Float) : Void;
}
// +END src/extras/geometries/TorusKnotGeometry.js


// +BEGIN src/extras/GeometryUtils.js
@:native("THREE.GeometryUtils")
extern class GeometryUtils {
    @:overload(function(geometry:Geometry, geometry2:Geometry) : Void {})
    public static function merge(geometry:Geometry, mesh:Mesh) : Void;
    public static function clone(geometry:Geometry) : Geometry;
    public static function randomPointInTriangle(vectorA:Vector3, vectorB:Vector3, vectorC:Vector3) : Vector3;
    // face : Face3 | Face4
    public static function randomPointInFace(face:Dynamic, geometry:Geometry, useCachedAreas:Bool) : Vector3;
    public static function randomPointsInGeometry(geometry:Geometry, n:Int) : Array<Vector3>;
    public static function triangleArea(vectorA:Vector3, vectorB:Vector3, vectorC:Vector3) : Float;
    public static function center(geometry:Geometry) : Void;
    public static function normalizeUVs(geometry:Geometry) : Void;
}
// +END src/extras/GeometryUtils.js


// +BEGIN src/extras/ImageUtils.js
@:native("THREE.ImageUtils")
extern class ImageUtils {
    public static function loadTexture(path:String, ?mapping:Int, ?cb:js.Dom.Image->Void) : Texture;
    public static function loadTextureCube(array:Array<String>, mapping:Int, cb:js.Dom.Image->Void) : Texture;
    public static function getNormalMap(image:js.Dom.Image, ?depth:Float) : js.Dom.HtmlDom; // Canvas
}
// +END src/extras/ImageUtils.js


// +BEGIN src/extras/loaders/Loader.js
@:native("THREE.Loader")
extern class Loader {
    public var showStatus : Bool;
    public var statusDomElement : js.Dom.HtmlDom;
    public var onLoadStart : Void -> Void;
    public var onLoadProgress : Void -> Void;
    public var onLoadComplete : Void -> Void;
    public function new(?showStatus:Bool) : Void;
    function addStatusElement() : Void;
    function updateProgress(progress:{loaded:Int, total:Int}) : Void;
    function extractUrlBase(url:String) : String;
    // materials are passed to createMaterial() but are not documented except inside src/extras/loaders/Loaders.js createMaterial() function, these parameters comes from a model file
    function initMaterials(scope:{ materials:Array<Material> }, materials:Array<Dynamic>, texturePath:String) : Void;
    function hasNormals(scope:{ materials:Array<Material> }) : Bool ;
    function createMaterial(m:Dynamic, texturePath:String) : Material;
}
// +END src/extras/loaders/Loader.js


interface Model {
}

// +BEGIN src/extras/loaders/BinaryLoader.js
// Note: BinaryLoader.prototype.createBinModel contains a Model definition
@:native("THREE.BinaryLoader")
extern class BinaryLoader extends Loader {
    public var showProgress : Bool;
    public var texturePath : String;
    public var binaryPath : String;
    public function new(?showStatus:Bool) : Void;
    // Load models generated by slim OBJ converter with BINARY option (converter_obj_three_slim.py -t binary)
    //  - binary models consist of two files: JS and BIN
    //  - parameters
    //		- url (required)
    //		- callback (required)
    //		- texturePath (optional: if not specified, textures will be assumed to be in the same folder as JS model file)
    //		- binaryPath (optional: if not specified, binary file will be assumed to be in the same folder as JS model file)
    public function load(url:String, resultCallback:Model->Void, ?texturePath:String, ?binaryPath:String) : Void;
}
// +END src/extras/loaders/BinaryLoader.js


// +BEGIN src/extras/loaders/ColladaLoader.js
// TODO: Complete Collada manipulation API
typedef ColladaData = {
    scene : Dynamic,
    morphs : Dynamic,
    skins : Dynamic,
    dae : {
        image : Dynamic,
        materials : Dynamic,
        effects : Dynamic,
        geometries : Dynamic,
        controllers : Dynamic,
        animations : Dynamic,
        visualScenes : Dynamic,
        scene : Dynamic,
    }
};

@:native("THREE.ColladaLoader")
extern class ColladaLoader {
    public function new() : Void;
    public function load(url:String, readyCallback:ColladaData->Void) : Void;
    public function parse(doc:Dynamic /* XMLHttpRequest result responseXML */, resultCallback:ColladaData->Void, ?url:String) : ColladaData;
    public function setPreferredShading(shading:Dynamic) : Void;
    public function applySkin(geometry:Geometry, instanceCtrl:Dynamic, frame:Dynamic) : Void;
    var geometries : Dynamic;
}
// +END src/extras/loaders/ColladaLoader.js


// +BEGIN src/extras/loaders/JSONLoader.js
@:native("THREE.JSONLoader")
extern class JSONLoader extends Loader {
    public function new(?showStatus:Bool) : Void;
    public function load(url:String, resultCallback:Model->Void, ?texturePath:String) : Void;
}
// +END src/extras/loaders/JSONLoader.js


// +BEGIN src/extras/helpers/CameraHelper.js
@:native("THREE.CameraHelper")
extern class CameraHelper extends Object3D {
    public var lineGeometry : Geometry;
    public var lineMaterial : LineBasicMaterial;
    public function new(camera:Camera) : Void;
    public function update(camera:Camera) : Void;
}
// +END src/extras/helpers/CameraHelper.js


// +BEGIN src/extras/helpers/AxisHelper.js
@:native("THREE.AxisHelper")
extern class AxisHelper extends Object3D {
    public function new() : Void;
}
// +END src/extras/helpers/AxisHelper.js


typedef SceneTrigger = {
    var type : String;
    var o : Object3D;
};

typedef SceneLoaderResult = {
    var scene : Scene;
    var geometries : Dynamic<Geometry>;
    var materials : Dynamic<Material>;
    var textures : Dynamic<Texture>;
    var objects : Dynamic<Object3D>;
    var cameras : Dynamic<Camera>;
    var lights : Dynamic<Light>;
    var fogs : Dynamic<Fog>;
    var triggers : Dynamic<SceneTrigger>;
    var empties : Dynamic<Object3D>;
};

typedef SceneLoaderProgress = {
    var totalModels : Int;
    var totalTextures : Int;
    var loadedModels : Int;
    var loadedTextures : Int;
};


// +BEGIN src/extras/loaders/SceneLoader.js
@:native("THREE.SceneLoader")
extern class SceneLoader {
    public var onLoadStart : Void -> Void;
    public var onLoadProgress : Void -> Void;
    public var onLoadComplete : Void -> Void;
    var callbackSync : SceneLoaderResult -> Void;
    public var callbackProgress : SceneLoaderProgress -> SceneLoaderResult -> Void;
    public function new() : Void;
    public function load(url:String, callbackFinished:SceneLoaderResult->Void) : Void;
}
// +END src/extras/loaders/SceneLoader.js


// +BEGIN src/extras/loaders/UTF8Loader.js
@:native("THREE.UTF8Loader")
extern class UTF8Loader {
    public function new() : Void;
    /**
     * Loader for UTF8 encoded models generated by:
     *	http://code.google.com/p/webgl-loader/
     *
     * Limitations:
     *  - number of vertices < 65536 (this is after optimizations in compressor, input OBJ may have even less)
     *	- models must have normals and texture coordinates
     *  - texture coordinates must be only from <0,1>
     *  - no materials support yet
     *  - models are scaled and offset (copy numbers from compressor and use them as parameters in UTF8Loader.load() )
     *
     * @author alteredq / http://alteredqualia.com/
     * @author won3d / http://twitter.com/won3d
     */
    // Load UTF8 compressed models generated by objcompress
    //  - parameters
    //		- url (required)
    //		- callback (required)
    //		- metaData (optional)
    public function load(url:String, resultCallback:Model->Void, metaData:{ scale:Float, offsetX:Float, offsetY:Float, offsetZ:Float }) : Void;
    // TODO createMesh
}
// +END src/extras/loaders/UTF8Loader.js


// +BEGIN src/extras/modifiers/SubdivisionModifier.js
@:native("THREE.SubdivisionModifier")
extern class SubdivisionModifier {
    public var subdivisions : Int;
    public var useOldVertexColors : Bool;
    public var supportUVs : Bool;
    public function new(?subdivisions:Int) : Void;
    public function modify(geometry:Geometry) : Void;
    public function smooth(geometry:Geometry) : Void;
}
// +END src/extras/modifiers/SubdivisionModifier.js


@:native("THREE.Axes")
extern class Axes extends Object3D {
    public function new() : Void;
}


// +BEGIN src/extras/objects/MarchingCubes.js
@:native("THREE.MarchingCubes")
extern class MarchingCubes extends Object3D {
    public function new(resolution:Float, material:Material) : Void;
    public function generateGeometry() : Geometry;
    public function reset() : Void;
}
// +END src/extras/objects/MarchingCubes.js


// +BEGIN src/extras/AnaglyphWebGLRenderer.js
@:native("THREE.AnaglyphWebGLRenderer")
extern class AnaglyphWebGLRenderer extends WebGLRenderer {
    public function new(?parameters:Dynamic) : Void;
}
// +END src/extras/AnaglyphWebGLRenderer.js


// +BEGIN src/extras/CrosseyedWebGLRenderer.js
@:native("THREE.CrosseyedWebGLRenderer")
extern class CrosseyedWebGLRenderer extends WebGLRenderer {
    public function new(?parameters:Dynamic) : Void;
}
// +END src/extras/CrosseyedWebGLRenderer.js


// +BEGIN src/extras/ParallaxBarrierWebGLRenderer.js
@:native("THREE.ParallaxBarrierWebGLRenderer")
extern class ParallaxBarrierWebGLRenderer extends WebGLRenderer {
    public function new(?parameters:Dynamic) : Void;
}
// +END src/extras/ParallaxBarrierWebGLRenderer.js


// +BEGIN src/extras/SceneUtils.js
@:native("THREE.SceneUtils")
extern class SceneUtils {
    public static function showHierarchy(root:Object3D, visible:Bool) : Void;
    public static function traverseHierarchy(root:Object3D, cb:Object3D->Void) : Void;
    public static function createMultiMaterialObject(geometry:Geometry, materials:Array<Material>) : Object3D;
    public static function cloneObject(source:Object3D) : Object3D;
}
// +END src/extras/SceneUtils.js


// +BEGIN src/extras/ShaderUtils.js
// requires WebGLRenderer
@:native("THREE.ShaderUtils")
extern class ShaderUtils {
    public static var lib : {
        /* -------------------------------------------------------------------------
		//	Fresnel shader
		//	- based on Nvidia Cg tutorial
        ------------------------------------------------------------------------- */
        var fresnel: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
		/* -------------------------------------------------------------------------
		//	Normal map shader
		//		- Blinn-Phong
		//		- normal + diffuse + specular + AO + displacement + reflection + shadow maps
		//		- point and directional lights (use with "lights: true" material option)
		 ------------------------------------------------------------------------- */
        var normal: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
        /* -------------------------------------------------------------------------
		//	Cube map shader
        ------------------------------------------------------------------------- */
        var cube: { uniforms:Dynamic, fragmentShader:String, vertexShader:String };
    };
}
// +END src/extras/ShaderUtils.js


// +BEGIN src/extras/ShaderSprite.js
@:native("THREE.ShaderSprite")
extern class ShaderSprite {
    public static var sprite : { vertexShader:String, fragmentShader:String };
}
// +END src/extras/ShaderSprite.js


// +BEGIN src/extras/ShaderFlares.js
@:native("THREE.ShaderFlares")
extern class ShaderFlares {
    public static var lensFlareVertexTexture : { vertexShader:String, fragmentShader:String };
    public static var lensFlare : { vertexShader:String, fragmentShader:String };
}
// +END src/extras/ShaderFlares.js


// +BEGIN src/extras/SpritePlugin.js
@:native("THREE.SpritePlugin")
extern class SpritePlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera, viewportWidth:Int, viewportHeight:Int) : Void;
}
// +END src/extras/SpritePlugin.js


// +BEGIN src/extras/ShadowMapPlugin.js
@:native("THREE.ShadowMapPlugin")
extern class ShadowMapPlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera) : Void;
    public function update(scene:Scene, camera:Camera) : Void;
}
// +END src/extras/ShadowMapPlugin.js


// +BEGIN src/extras/LensFlarePlugin.js
@:native("THREE.LensFlarePlugin")
extern class LensFlarePlugin {
    public function new() : Void;
    public function init(renderer:Renderer) : Void;
    public function render(scene:Scene, camera:Camera, viewportWidth:Int, viewportHeight:Int) : Void;
}
// +END src/extras/LensFlarePlugin.js


// +BEGIN src/extras/objects/LensFlare.js
@:native("THREE.LensFlare")
extern class LensFlare extends Object3D {
    public var lensFlares : Array<Dynamic>;
    public var positionScreen : Vector3;
    public var customUpdateCallback : Void->Void;
    public function new(texture:Texture, ?size:Float, ?distance:Float, ?blending:Int, color:Color) : Void;
    // override public function add(texture:Texture, ?size:Float, ?distance:Float, ?blending:Int, color:Color) : Void; // TODO
    public function updateLensFlares() : Void;
}
// +END src/extras/objects/LensFlare.js

class Three {
    public static inline function requestAnimationFrame(f:Void->Void) : Int {
        return untyped js.Lib.window.requestAnimationFrame(f);
    }

    public static inline function cancelAnimationFrame(f:Void->Void){
        untyped js.Lib.window.cancelAnimationFrame(id);
    }

    private static function __init__() : Void untyped {
        #if !noEmbedJS
            #if debug
            haxe.macro.Tools.includeFile("js/three/three-debug.js");
            #else
            haxe.macro.Tools.includeFile("js/three/three-min.js");
            #end
        #end
    }
}