/// @description Spawn some enemies
if ammo > 0
{
	alarm[3] = 3;
	ammo -= 1;
	with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhost)
	{
		motion_add(random(360),6);
		walk += 2;
		alarm[1] *= 0.5;
		if instance_exists(Player) && Player.skill_got[29] {
			alarm[1] += 50;
			scrGiveSnooze();
		}
		with instance_create(x,y,Smoke)
		{
			motion_add(other.direction,1);	
		}
	}
}
else
{
	instance_destroy();	
}