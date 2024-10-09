/// @description Fire accurate bomb
if goToTarget
	exit;
if instance_exists(target) && target != noone
{
	walk = 0;
	speed = 0;
	alarm[1] += actTime;
	var tx = target.x;
	var ty = target.y;
	sprite_index = spr_fire;
	image_index = 0;
	alarm[3] = image_number/image_speed;
	snd_play(sndGhostBossExplosionAttack,0.1)
	var ranDir = random(360);
	var len = 64 + random(64);
	with instance_create(target.x,target.y,BecomeGhostExplosion)
	{
		team = other.team;
		image_speed -= 0.125;
	}
}