/// @description Tempdaraw
draw_self();
/*
if sprite_index == sprAtomTeleportationFieldCore
{
	draw_sprite_ext(sprAtomTeleportationFieldOuterRing,image_index,x,y,image_xscale,image_yscale,middleAngle,c_white,1);
	//draw_sprite_ext(sprEyesMindFieldOuterRing,image_index,x,y,image_xscale,image_yscale,outerAngle,c_white,1);
}*/
var aboutToTp = false;
with TeleportationField
{
	if number == 1 && alarm[1] < 4
	{
		aboutToTp = true;
	}
}
if aboutToTp
{
	draw_circle(x,y,range,false);	
}