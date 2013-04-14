package js.three;

@:native("THREE.ExtrudeGeometry")
extern class ExtrudeGeometry extends Geometry {
    /**
     * @author zz85 / http://www.lab4games.net/zz85/blog
     *
     * Creates extruded geometry from a path shape.
     *
     * parameters = {
     *
     *  size:            <float>,  // size of the text
     *  height:          <float>,  // thickness to extrude text
     *  curveSegments:   <int>,         // number of points on the curves
     *  steps:                <int>,         // number of points for z-side extrusions
     *
     *  font:            <string>,      // font name
     *  weight:          <string>,      // font weight (normal, bold)
     *  style:                <string>,      // font style  (normal, italics)
     *
     *  bevelEnabled:    <bool>,             // turn on bevel
     *  bevelThickness: <float>,        // how deep into text bevel goes
     *  bevelSize:       <float>,       // how far from text outline is bevel
     *  bevelSegments:   <int>,              // number of bevel layers
     *
     *  extrudePath:     <THREE.CurvePath>   // path to extrude shape along
     *  bendPath:        <THREE.CurvePath>   // path to bend the geometry around
     *
     *  material:         <THREE.Material>   // material for front and back faces
     *  extrudeMaterial: <THREE.Material>    // material for extrusion and beveled faces
     *
     *  }
     **/

    @:overload(function(?shapes:Shape, ?options:Dynamic) : Void {})
    public function new(?shapes:Array<Shape>, ?options:Dynamic) : Void;
    public function addShapeList(shapes:Array<Shape>, options:Dynamic) : Void;
    public function addShape(shape:Shape, options:Dynamic) : Void;
}
