/// @description Constantly spawn babies
if target != noone && instance_exists(target) && instance_number(TinyJellyFish) < 60
{
	snd_play(sndTinyJellyFishSpawn,0.1);
	alarm[3] = jellyDelay;
	if jellyAmmo > 0
	{
		jellyAmmo -= 1;
	}
	else
	{
		jellyAmmo = jellyMaxAmmo;
		alarm[3] = jellyMaxAmmoDelay;
	}
	var sleepy = false;
	if instance_exists(Player) && Player.skill_got[29] {
		sleepy = true;	
	}
	with instance_create(x+random(16)-8,y+random(16)-8,TinyJellyFish)
	{
		wasResurrected = true;
		existTime = 30;
		motion_add(random(360),1);
		if sleepy {
			alarm[1] += 40;
			scrGiveSnooze();
		}
	}
}