/// @description destroy me
/*
if phaseable
{
	with other
	{
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x += hspeed;
		y += vspeed;
		mask_index = msk;
	}
}
else */if !phaseable && alarm[0]<1{
    instance_destroy();
	instance_create(x+8+random(8)-4,y+8+random(8)-4,Debris)
}