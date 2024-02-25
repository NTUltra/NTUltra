/// @description Meteor strike
if target != noone && instance_exists(target)
{
	image_index=0;
	sprite_index=spr_fire;
	alarm[1] += 10;
	snd_play(sndDragonStart);
	snd_play(sndBigBallFire);
	var aimDir = point_direction(x,y,target.x,target.y);
	var aimDis = point_distance(x,y,target.x,target.y)/80;//Meteor max time
	aimDis = min(aimDis,20);
	with instance_create(x,y,Meteor)
	{
		team = other.team;
		motion_add(aimDir,aimDis + 1);
	}
}