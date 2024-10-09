/// @description Materialize
if goToTarget || alarm[6] > 0
	exit;
image_alpha = 1;
if mask_index == mskPickupThroughWall
{
	instance_create(x,y,Smoke);
	snd_play(sndGhostFadeIn,0.2,false,true,3,false,false,0.5,false,id,0,70,25,200);
}
mask_index = mskPitGhostBoss;
if !collision_point(x,y,Floor,false,false) || place_meeting(x,y,Wall)
{
	var n = instance_nearest(x,y,Floor);
	if n != noone
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x + o;
		y = n.y + o;
		scrForcePosition60fps();
		move_outside_solid(direction,16);
	}
}