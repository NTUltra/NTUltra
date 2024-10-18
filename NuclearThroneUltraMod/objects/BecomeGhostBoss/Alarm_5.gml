/// @description Spawn more enemies
if ammo > 0
{
	alarm[5] = 18;
	snd_play(sndGhostSpawn,0.1,true);
	with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhostExploder)
	{
		motion_add(random(360),6);
		walk += 2;
		actTime += 3;
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
	BackCont.shake += 4;
}