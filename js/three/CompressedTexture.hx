package js.three;

@:native("THREE.CompressedTexture")
extern class CompressedTexture extends Texture {
    public function new(mipmaps:Array<Dynamic>, width:Int, height:Int, format:Int, type:Int, mapping:Mapping, wrapS:Int, wrapT:Int, magFilter:Int, minFilter:Int, anisotropy:Int) : Void;
}
