/// @description Spawn some explosions around the player
alarm[1] += actTime;
if instance_exists(Player)
{
	var tx = Player.x;
	var ty = Player.y;
	
	repeat(3)
	{
		var ranDir = random(360);
		var len = 64 + random(64);
		with instance_create(tx + lengthdir_x(len,ranDir),ty + lengthdir_y(len,ranDir),BecomeGhostExplosion)
		{
			team = other.team;
			motion_add(point_direction(x,y,Player.x,Player.y),1);
		}
	}
	repeat(3)
	{
		var ranDir = random(360);
		var len = 96 + random(64);
		with instance_create(tx + lengthdir_x(len,ranDir),ty + lengthdir_y(len,ranDir),BecomeGhostExplosion)
		{
			team = other.team;
			motion_add(point_direction(x,y,Player.x,Player.y),1);
			sprite_index = sprGhostAboutToExplodeMedium;
			explosionSize = 2;
		}
	}
}