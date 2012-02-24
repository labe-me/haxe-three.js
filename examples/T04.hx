import js.Lib;
import js.three.Three;

class T04 {
    public static function main(){
        var container, stats;
        var camera, scene, projector, renderer;
        var mouse = { x: 0.0, y: 0.0 };
        var INTERSECTED : Dynamic = null;

        container = Lib.document.createElement( 'div' );
        Lib.document.body.appendChild( container );

        var info = Lib.document.createElement( 'div' );
        info.style.position = 'absolute';
        info.style.top = '10px';
        info.style.width = '100%';
        info.style.textAlign = 'center';
        info.innerHTML = '<a href="http://github.com/mrdoob/three.js" target="_blank">three.js</a> webgl - interactive cubes';
        container.appendChild( info );

        camera = new PerspectiveCamera( 70, Lib.window.innerWidth / Lib.window.innerHeight, 1, 10000 );
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

            var object = new Mesh( geometry, new MeshLambertMaterial( { color: Math.random() * 0xffffff } ) );

            object.position.x = Math.random() * 800 - 400;
            object.position.y = Math.random() * 800 - 400;
            object.position.z = Math.random() * 800 - 400;

            object.rotation.x = ( Math.random() * 360 ) * Math.PI / 180;
            object.rotation.y = ( Math.random() * 360 ) * Math.PI / 180;
            object.rotation.z = ( Math.random() * 360 ) * Math.PI / 180;

            object.scale.x = Math.random() * 2 + 1;
            object.scale.y = Math.random() * 2 + 1;
            object.scale.z = Math.random() * 2 + 1;

            scene.add( object );
        }

        projector = new Projector();

        renderer = new WebGLRenderer();
        renderer.sortObjects = false;
        renderer.setSize( Lib.window.innerWidth, Lib.window.innerHeight );

        container.appendChild(renderer.domElement);

        stats = new js.Stats();
        stats.getDomElement().style.position = 'absolute';
        stats.getDomElement().style.top = '0px';
        container.appendChild( stats.getDomElement() );

        (untyped Lib.document.addEventListener)( 'mousemove', function(event){

            event.preventDefault();

            mouse.x = ( event.clientX / Lib.window.innerWidth ) * 2 - 1;
            mouse.y = - ( event.clientY / Lib.window.innerHeight ) * 2 + 1;

        }, false );

        var radius = 100;
        var theta = 0.0;

        var timer = new haxe.Timer(Math.round(1000/60));
        timer.run = function() {
            theta += 0.2;

            camera.position.x = radius * Math.sin( theta * Math.PI / 360 );
            camera.position.y = radius * Math.sin( theta * Math.PI / 360 );
            camera.position.z = radius * Math.cos( theta * Math.PI / 360 );

            camera.lookAt( scene.position );

            // find intersections

            var vector = new Vector3( mouse.x, mouse.y, 1 );
            projector.unprojectVector( vector, camera );

            var ray = new Ray( camera.position, vector.subSelf( camera.position ).normalize() );

            var intersects = ray.intersectScene( scene );

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