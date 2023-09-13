/// @description Collision Wall
alarm[3] = 1;
if place_meeting(x,y,Wall)
{
	x -= hspeed*wallPierce;
	y -= vspeed*wallPierce;
	if speed > 2
	{
		var msk = mask_index;
		mask_index = mskPickupThroughWall;
		x += lengthdir_x(speed,image_angle)
		y += lengthdir_y(speed,image_angle)
		mask_index = msk;
	}
	if walled = 0
	{
		with instance_create(other.x+8,other.y+8,MeleeHitWall)
			image_angle = point_direction(other.x,other.y,x,y)
		walled = 1
		snd_play(snd_wallhit,0.05,true,true,1,false);
	}	
}