/// @description 
instance_destroy();
if explosionSize == 3
{
	snd_play(sndBigGhostDie,0.1);
	with instance_create(x,y,BigGhostExplosion)
	{
		team = other.team;
		dmg = 5
		with myExplosionMask
		{
			dmg = 5
		}
		direction = other.direction + 180;
		speed = 0.5;
		if instance_exists(Player)
		{
			direction = point_direction(Player.x,Player.y,x,y);	
		}
	}
}
if explosionSize == 2
{
	snd_play(sndGhostDie,0.1);
	with instance_create(x,y,MediumGhostExplosion)
	{
		team = other.team;
		dmg = 4
		with myExplosionMask
		{
			dmg = 4
		}
		direction = other.direction + 180;
		speed = 0.5;
		if instance_exists(Player)
		{
			direction = point_direction(Player.x,Player.y,x,y);	
		}
	}
}
else
{
	snd_play(sndSmallGhostDie,0.1);
	with instance_create(x,y,SmallGhostExplosion)
	{
		team = other.team;
		dmg = 3
		with myExplosionMask
		{
			dmg = 3
		}
		direction = other.direction + 180;
		speed = 0.5;
		if instance_exists(Player)
		{
			direction = point_direction(Player.x,Player.y,x,y);	
		}
	}
}