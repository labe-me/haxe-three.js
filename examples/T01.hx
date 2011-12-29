import js.three.Three;
import js.Lib;

class T01 {
    public static function main(){
        var w = Lib.window.innerWidth;
        var h = Lib.window.innerHeight;

        var scene = new Scene();
        // create a red cube
        var material = new MeshLambertMaterial({color:0xcc0000});
        var geometry = new CubeGeometry(50, 50, 50, 1, 1, 1, material, null);
        var cube = new Mesh(geometry, new MeshFaceMaterial());
        cube.position.set(0, 100, 0);
        scene.add(cube);
        // add some light
        var pointLight = new PointLight(0xffffff, 1, 0);
        pointLight.position.set(10, 50, 130);
        scene.add(pointLight);
        // and a camera
        var camera = new PerspectiveCamera(70, w/h, 1, 1000);
        camera.position.z = 500;
        scene.add(camera);
        // setup renderer in the document
        var renderer = new WebGLRenderer(null);
        renderer.setSize(w, h);
        Lib.document.body.appendChild(renderer.domElement);
        // refresh once in a while
        var timer = new haxe.Timer(30);
        timer.run = function(){
            renderer.render(scene, camera, null, null);
        }
    }
}