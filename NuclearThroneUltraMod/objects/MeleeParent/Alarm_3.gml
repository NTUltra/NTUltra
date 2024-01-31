/// @description Collision Wall
alarm[3] = 1;
var w = instance_place(x,y,Wall)
if w != noone
{
	x -= min(3,hspeed)*wallPierce;
	y -= min(3,vspeed)*wallPierce;
	speed *= 0.9;
	/*
	if speed > 2
	{
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x += lengthdir_x(speed,image_angle)
		y += lengthdir_y(speed,image_angle)
		mask_index = msk;
	}
	*/
	if walled = 0
	{
		with instance_create(w.x+8,w.y+8,MeleeHitWall)
			image_angle = point_direction(other.x,other.y,x,y)
		walled = 1
		snd_play(snd_wallhit,0.05,true,true,1,false);
	}	
}