import js.Browser;
import js.three.*;
// import * don't really include the class, we have to reference it
//import js.three.Three;

class T04 {
    public static function main(){
        var container, stats;
        var camera, scene, projector, renderer;
        var mouse = { x: 0.0, y: 0.0 };
        var objects = new Array<Object3D>();
        var INTERSECTED : Dynamic = null;

        container = Browser.document.createElement( 'div' );
        Browser.document.body.appendChild( container );

        var info = Browser.document.createElement( 'div' );
        info.style.position = 'absolute';
        info.style.top = '10px';
        info.style.width = '100%';
        info.style.textAlign = 'center';
        info.innerHTML = '<a href="http://github.com/mrdoob/three.js" target="_blank">three.js</a> webgl - interactive cubes';
        container.appendChild( info );

        camera = new PerspectiveCamera( 70, Browser.window.innerWidth / Browser.window.innerHeight, 1, 10000 );
        camera.position.set( 0, 300, 500 );

        scene = new Scene();
        scene.add(camera);


        var light = new DirectionalLight( 0xffffff, 2 );
        light.position.set( 1, 1, 1 ).normalize();
        scene.add( light );

        var light = new DirectionalLight( 0xffffff );
        light.position.set( -1, -1, -1 ).normalize();
        scene.add( light );

        var geometry = new CubeGeometry( 20, 20, 20 );

        for (i in 0...500) {

            var object = new Mesh( geometry, new MeshLambertMaterial( { color: std.Math.random() * 0xffffff } ) );

            object.position.x = std.Math.random() * 800 - 400;
            object.position.y = std.Math.random() * 800 - 400;
            object.position.z = std.Math.random() * 800 - 400;

            object.rotation.x = ( std.Math.random() * 360 ) * std.Math.PI / 180;
            object.rotation.y = ( std.Math.random() * 360 ) * std.Math.PI / 180;
            object.rotation.z = ( std.Math.random() * 360 ) * std.Math.PI / 180;

            object.scale.x = std.Math.random() * 2 + 1;
            object.scale.y = std.Math.random() * 2 + 1;
            object.scale.z = std.Math.random() * 2 + 1;

            scene.add( object );

            objects.push( object );
        }

        projector = new Projector();

        renderer = new WebGLRenderer();
        renderer.sortObjects = false;
        renderer.setSize( Browser.window.innerWidth, Browser.window.innerHeight );

        container.appendChild(renderer.domElement);

        stats = new js.Stats();
        stats.domElement.style.position = 'absolute';
        stats.domElement.style.top = '0px';
        container.appendChild( stats.domElement );

        (untyped Browser.document.addEventListener)( 'mousemove', function(event){

            event.preventDefault();

            mouse.x = ( event.clientX / Browser.window.innerWidth ) * 2 - 1;
            mouse.y = - ( event.clientY / Browser.window.innerHeight ) * 2 + 1;

        }, false );

        var radius = 100;
        var theta = 0.0;

        var timer = new haxe.Timer(std.Math.round(1000/60));
        timer.run = function() {
            theta += 0.2;

            camera.position.x = radius * std.Math.sin( theta * std.Math.PI / 360 );
            camera.position.y = radius * std.Math.sin( theta * std.Math.PI / 360 );
            camera.position.z = radius * std.Math.cos( theta * std.Math.PI / 360 );

            camera.lookAt( scene.position );

            // find intersections

            var vector = new Vector3( mouse.x, mouse.y, 1 );
            projector.unprojectVector( vector, camera );

            var raycaster = new Raycaster( camera.position, vector.sub( camera.position ).normalize() );

            var intersects = raycaster.intersectObjects( objects );

            if ( intersects.length > 0 ) {

                if ( INTERSECTED != intersects[ 0 ].object ) {

                    if ( INTERSECTED != null ) (cast INTERSECTED).material.color.setHex( INTERSECTED.currentHex );

                    INTERSECTED = intersects[ 0 ].object;
                    INTERSECTED.currentHex = INTERSECTED.material.color.getHex();
                    INTERSECTED.material.color.setHex( 0xff0000 );

                }

            } else {

                if ( INTERSECTED != null ) INTERSECTED.material.color.setHex( INTERSECTED.currentHex );

                INTERSECTED = null;

            }

            renderer.render( scene, camera );
            stats.update();
        }
    }
}