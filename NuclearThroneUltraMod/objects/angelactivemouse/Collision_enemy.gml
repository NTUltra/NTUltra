/// @description Reflect Contact damage
with other
{
	var contactDmg = meleedamage;
	if instance_exists(Player)
	{
		if Player.skill_got[8]//Gamma Gutseru
		{
			contactDmg += 7//dmg dealt by gamma guts
			snd_play(sndGammaGutsProc);
			if (my_health <= 0)//gamma guts kill?
			{
				snd_play(sndGammaGutsKill,0,true);
				instance_create(x,y,GammaGutsBlast);
			}
		}
	}
	if meleedamage > 0
	{
		Sleep(10);
		with instance_create(x,y,GammaGutsBlast)
		{
			sprite_index = sprRiskActive;
			image_speed = 1;
		}
		snd_play(snd_melee);
	}
	my_health -= contactDmg;
}