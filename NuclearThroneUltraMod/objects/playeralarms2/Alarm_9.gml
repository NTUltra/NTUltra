/// @description Spawn flames on player
alarm[9] = 3;
with Player
{
	with instance_create(x,y,Flame)
	{
		wepFire = -2;
		motion_add(other.direction+180+random(60)-30,1+random(3))
		team = 2;
	}
}