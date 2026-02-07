/// @description Destroy and voidblock
BackCont.shake += shake;
if BackCont.shake > 60
	BackCont.shake = 60;
with instance_create_depth(x,y,depth,blockType)
{
	image_xscale = other.image_xscale;
	image_yscale = other.image_yscale;
	dmg = min(dmg,other.dmg);
	createdBy = other.createdBy;
}
instance_destroy();