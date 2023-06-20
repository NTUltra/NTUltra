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
		with instance_create(x,y,DeflectMelee)
		{
			var s = clamp(other.mySize*0.5,1,3);
			image_xscale = s;
			image_yscale = s;
			image_alpha = other.meleedamage*0.05;
		}
		if !audio_is_playing(snd_melee)
			snd_play(snd_melee,0,true);
	}
	if contactDmg > 0
	{
		if !audio_is_playing(snd_hurt)
			snd_play(snd_hurt,0,false);
		my_health -= contactDmg;
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),3)
	}
}