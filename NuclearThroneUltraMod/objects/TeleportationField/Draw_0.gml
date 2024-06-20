/// @description Tempdaraw
draw_self();
if sprite_index != sprAtomTeleportationFieldCore
	exit;

/*
if sprite_index == sprAtomTeleportationFieldCore
{
	draw_sprite_ext(sprAtomTeleportationFieldOuterRing,image_index,x,y,image_xscale,image_yscale,middleAngle,c_white,1);
	//draw_sprite_ext(sprEyesMindFieldOuterRing,image_index,x,y,image_xscale,image_yscale,outerAngle,c_white,1);
}*/
/*
var aboutToTp = refreshTell + 1;
with TeleportationField
{
	if number == 1 && alarm[1] < refreshTell
	{
		aboutToTp = alarm[1];
	}
}
if aboutToTp < refreshTell
{
	if UberCont.normalGameSpeed == 60
		middleAngle += 0.25;
	else
		middleAngle += 0.5;
	
	draw_sprite_ext(sprAtomTeleportationFieldPulse,
	clamp(round(lerp(5,0,(aboutToTp) / refreshTell)),0,5),
	x,y,1,1,middleAngle,c_white,1);
}*/