/// @description Fire
if goToTarget
	exit;
if instance_exists(target) && target != noone
{
	var tx = target.x;
	var ty = target.y;
	sprite_index = spr_fire;
	image_index = 0;
	alarm[3] = image_number/image_speed;
	snd_play(sndGhostBossExplosionAttack,0.1)
	repeat(3)
	{
		var ranDir = random(360);
		var len = 64 + random(64);
		with instance_create(tx + lengthdir_x(len,ranDir),ty + lengthdir_y(len,ranDir),BecomeGhostExplosion)
		{
			team = other.team;
			direction = point_direction(x,y,Player.x,Player.y);
		}
	}
}