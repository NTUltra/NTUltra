/// @description Spawn some explosions around the player
alarm[1] += actTime;
if instance_exists(Player)
{
	var tx = Player.x;
	var ty = Player.y;
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
			direction = point_direction(x,y,Player.x,Player.y)
		}
	}
	repeat(3)
	{
		var ranDir = random(360);
		var len = 96 + random(64);
		with instance_create(tx + lengthdir_x(len,ranDir),ty + lengthdir_y(len,ranDir),BecomeGhostExplosion)
		{
			team = other.team;
			direction = point_direction(x,y,Player.x,Player.y);
			sprite_index = sprGhostAboutToExplodeMedium;
			explosionSize = 2;
		}
	}
}