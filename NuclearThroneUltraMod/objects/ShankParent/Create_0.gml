event_inherited();
image_speed = 0.4

typ = 0 //0 = nothing, 1 = deflectable, 2 = destructable, 3 = deflectable

image_xscale += 0.05;
image_yscale += 0.05;

dmg=6;
if UberCont.ultramodSwap
{
	var um = GetPlayerUltramod()
	if um == ultramods.bloodMelee
	{
		mask_index = mskPickupThroughWall;
		visible = false;
		alarm[11] = 1;
	}
}
