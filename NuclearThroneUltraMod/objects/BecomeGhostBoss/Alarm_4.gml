/// @description Spawn more enemies
if ammo > 0
{
	alarm[4] = 15;
	snd_play(sndGhostSpawnOld,0.1,true);
	with instance_create(x + random_range(32,-32),y + random_range(32, - 32), PitGhostLaser)
	{
		motion_add(random(360),6);
		walk += 2;
		alarm[1] *= 0.5;
		actTime += 2;
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