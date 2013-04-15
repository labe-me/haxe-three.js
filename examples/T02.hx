import js.three.*;
import js.Browser;

// port of canvas_geometry_earth.html
class T02 {
    public static function main(){
        var mouseX = 0;
        var mouseY = 0;
        var container = Browser.document.body;
        var scene = new Scene();
        var camera = new PerspectiveCamera(60, Browser.window.innerWidth / Browser.window.innerHeight, 1, 10000);
        camera.position.z = 500;
        scene.add(camera);
        var mesh = new Mesh(new PlaneGeometry(300, 300, 3, 3), new MeshBasicMaterial({ map:ImageUtils.loadTexture("textures/shadow.png"), overdraw:true }));
        mesh.position.y = -250;
        mesh.position.x = -90 * std.Math.PI / 180;
        scene.add(mesh);
        var mesh = new Mesh(new SphereGeometry(200, 20, 20), new MeshBasicMaterial({ map:ImageUtils.loadTexture("textures/land_ocean_ice_cloud_2048.jpg"), overdraw:true }));
        scene.add(mesh);
        var renderer = new WebGLRenderer();
        renderer.setSize(Browser.window.innerWidth, Browser.window.innerHeight);
        Browser.document.body.appendChild(renderer.domElement);
        // When will haxe support things
        untyped Browser.document.addEventListener("mousemove", function(event){
            mouseX = (event.clientX - Browser.window.innerWidth / 2);
            mouseY = (event.clientY - Browser.window.innerHeight / 2);
        }, false);
        var run = null;
        //var timer = new haxe.Timer(30);
        run = function(f):Bool{
            Three.requestAnimationFrame(run);
            camera.position.x += (mouseX - camera.position.x) * 0.05;
            camera.position.y += (-mouseY - camera.position.y) * 0.05;
            camera.lookAt(scene.position);
            mesh.rotation.y -= 0.005;
            renderer.render(scene, camera);
            return true;
        }
        run(0);
    }
}