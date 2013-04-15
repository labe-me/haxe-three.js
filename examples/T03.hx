import js.Browser;
import js.three.*;

// webgl_geometry_colors
class T03 {
    public static function main(){
        var camera = new PerspectiveCamera(20, Browser.window.innerWidth/Browser.window.innerHeight, 1, 10000);
        camera.position.z = 1800;
        var scene = new Scene();
        var light = new DirectionalLight(0xffffff);
        light.position.set(0, 0, 1);
        light.position.normalize();
        scene.add(light);
        var shadowMaterial = new MeshBasicMaterial({
            map: ImageUtils.loadTexture("textures/shadow.png")
        });
        var shadowGeo = new PlaneGeometry(300, 300, 1, 1);
        var mesh = new Mesh(shadowGeo, shadowMaterial);
        mesh.position.y = -250;
        mesh.position.x = -90 * std.Math.PI / 180;
        scene.add(mesh);
        var mesh = new Mesh(shadowGeo, shadowMaterial);
        mesh.position.y = -250;
        mesh.position.x = -400;
        mesh.position.x = -90 * std.Math.PI / 180;
        scene.add(mesh);
        var mesh = new Mesh(shadowGeo, shadowMaterial);
        mesh.position.y = -250;
        mesh.position.x = 400;
        mesh.position.x = -90 * std.Math.PI / 180;
        scene.add(mesh);
        var faceIndices = ['a','b','c','d'];
        var color, f, f2, f3, p, n, vertexIndex;
        var radius = 200;
        var geometry = new IcosahedronGeometry(radius, 1);
        var geometry2 = new IcosahedronGeometry(radius, 1);
        var geometry3 = new IcosahedronGeometry(radius, 1);
        for (i in 0...geometry.faces.length){
            f = geometry.faces[i];
            f2 = geometry2.faces[i];
            f3 = geometry3.faces[i];
            n = Std.is(f, Face3) ? 3 : 4;
            for (j in 0...n){
                vertexIndex = Reflect.field(f, faceIndices[j]);
                p = geometry.vertices[vertexIndex];

                color = new Color(0xffffff);
                color.setHSL( (p.y / radius + 1) /2, 1.0, 0.5 );
                f.vertexColors[j] = color;

                color = new Color(0xffffff);
                color.setHSL( 0, (p.y / radius + 1) / 2, 0.5 );
                f2.vertexColors[j] = color;

                color = new Color(0xffffff);
                color.setHSL(0.125 * vertexIndex/geometry.vertices.length, 1, 0.5);
                f3.vertexColors[j] = color;
            }
        }
        var materials : Array<Material> = [
            cast new MeshLambertMaterial({ color:0xffffff, shading:Three.FlatShading, vertexColors:Three.VertexColors }),
            cast new MeshLambertMaterial({ color:0x000000, shading:Three.FlatShading, wireframe:true, transparent:true })
        ];
        var group1 = SceneUtils.createMultiMaterialObject(geometry, materials);
        group1.position.x = -400;
        group1.rotation.x = -1.87;
        //group1.scale.set(200, 200, 200);
        scene.add(group1);

        var group2 = SceneUtils.createMultiMaterialObject(geometry2, materials);
        group2.position.x = 400;
        group2.rotation.x = 0;
        //group2.scale = group1.scale;
        scene.add(group2);

        var group3 = SceneUtils.createMultiMaterialObject(geometry3, materials);
        group3.position.x = 0;
        group3.rotation.x = 0;
        //group3.scale = group1.scale;
        scene.add(group3);

        var renderer = new WebGLRenderer({ antialias:true });
        renderer.setSize(Browser.window.innerWidth, Browser.window.innerHeight);

        Browser.document.body.appendChild(renderer.domElement);

        /*
        var stats = new Stats();
        stats.domElement.style.position = 'absolute';
        stats.domElement.style.top = '0px';
        container.appendChild( stats.domElement );
        */
        var mouseX = 0, mouseY = 0;
        untyped Browser.document.addEventListener('mousemove', function(event){
            mouseX = (event.clientX - Browser.window.innerWidth/2);
            mouseY = (event.clientY - Browser.window.innerHeight/2);
        }, false);


        var timer = new haxe.Timer(std.Math.round(1000/60));
        timer.run = function(){
            camera.position.x += (mouseX - camera.position.x) * 0.05;
            camera.position.y += (-mouseY - camera.position.y) * 0.05;
            camera.lookAt(scene.position);
            renderer.render(scene, camera);
        }
    }
}