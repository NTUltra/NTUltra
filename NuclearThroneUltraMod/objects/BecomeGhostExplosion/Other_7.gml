/// @description 
instance_destroy();
if explosionSize == 2
{
	snd_play(sndGhostDie,0.1);
	with instance_create(x,y,MediumGhostExplosion)
	{
		team = other.team;
		dmg = 3
		with myExplosionMask
		{
			dmg = 3
		}
		direction = other.direction + 180;
		speed = 1;
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
		dmg = 6
		with myExplosionMask
		{
			dmg = 3
		}
		direction = other.direction + 180;
		speed = 1;
		if instance_exists(Player)
		{
			direction = point_direction(Player.x,Player.y,x,y);	
		}
	}
}