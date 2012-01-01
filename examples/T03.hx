import js.Lib;
import js.three.Three;

// webgl_geometry_colors
class T03 {
    public static function main(){
        var camera = new PerspectiveCamera(20, Lib.window.innerWidth/Lib.window.innerHeight, 1, 10000);
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
        mesh.position.x = -90 * Math.PI / 180;
        scene.add(mesh);
        var mesh = new Mesh(shadowGeo, shadowMaterial);
        mesh.position.y = -250;
        mesh.position.x = -400;
        mesh.position.x = -90 * Math.PI / 180;
        scene.add(mesh);
        var mesh = new Mesh(shadowGeo, shadowMaterial);
        mesh.position.y = -250;
        mesh.position.x = 400;
        mesh.position.x = -90 * Math.PI / 180;
        scene.add(mesh);
        var faceIndices = ['a','b','c','d'];
        var color, f, f2, f3, p, n, vertexIndex;
        var geometry = new IcosahedronGeometry(1);
        var geometry2 = new IcosahedronGeometry(1);
        var geometry3 = new IcosahedronGeometry(1);
        for (i in 0...geometry.faces.length){
            f = geometry.faces[i];
            f2 = geometry2.faces[i];
            f3 = geometry3.faces[i];
            n = Std.is(f, Face3) ? 3 : 4;
            for (j in 0...n){
                vertexIndex = Reflect.field(f, faceIndices[j]);
                p = geometry.vertices[vertexIndex].position;
                color = new Color(0xffffff);
                color.setHSV((p.y+1)/2, 1, 1);
                f.vertexColors[j] = color;
                color = new Color(0xffffff);
                color.setHSV(0, (p.y+1)/2, 1.0);
                f2.vertexColors[j] = color;
                color = new Color(0xffffff);
                color.setHSV(0.125 * vertexIndex/geometry.vertices.length, 1, 1);
                f3.vertexColors[j] = color;
            }
        }
        var materials : Array<Material> = [
            cast new MeshLambertMaterial({ color:0xffffff, shading:Shading.Flat, vertexColors:Colors.VertexColors }),
            cast new MeshLambertMaterial({ color:0x000000, shading:Shading.Flat, wireframe:true, transparent:true })
        ];
        var group1 = SceneUtils.createMultiMaterialObject(geometry, materials);
        group1.position.x = -400;
        group1.rotation.x = -1.87;
        group1.scale.set(200, 200, 200);
        scene.add(group1);

        var group2 = SceneUtils.createMultiMaterialObject(geometry2, materials);
        group2.position.x = 400;
        group2.rotation.x = 0;
        group2.scale = group1.scale;
        scene.add(group2);

        var group3 = SceneUtils.createMultiMaterialObject(geometry3, materials);
        group3.position.x = 0;
        group3.rotation.x = 0;
        group3.scale = group1.scale;
        scene.add(group3);

        var renderer = new WebGLRenderer({ antialias:true });
        renderer.setSize(Lib.window.innerWidth, Lib.window.innerHeight);

        Lib.document.body.appendChild(renderer.domElement);

        /*
        var stats = new Stats();
        stats.domElement.style.position = 'absolute';
        stats.domElement.style.top = '0px';
        container.appendChild( stats.domElement );
        */
        var mouseX = 0, mouseY = 0;
        untyped Lib.document.addEventListener('mousemove', function(event){
            mouseX = (event.clientX - Lib.window.innerWidth/2);
            mouseY = (event.clientY - Lib.window.innerHeight/2);
        }, false);


        var timer = new haxe.Timer(30);
        timer.run = function(){
            camera.position.x += (mouseX - camera.position.x) * 0.05;
            camera.position.y += (-mouseY - camera.position.y) * 0.05;
            camera.lookAt(scene.position);
            renderer.render(scene, camera);
        }
    }
}