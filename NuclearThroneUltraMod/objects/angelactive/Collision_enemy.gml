/// @description Reflect Contact damage
with other
{
	var contactDmg = (other.dmg + meleedamage) * 0.5;
	if meleedamage > 0
	{
		Sleep(10);
		with instance_create(x,y,DeflectMelee)
		{
			var s = clamp(other.mySize*0.5,1,3);
			image_xscale = s;
			image_yscale = s;
			image_alpha = max(0.2,other.meleedamage*0.05);
		}
		if !audio_is_playing(snd_melee)
			snd_play(snd_melee,0,true);
	}
	if contactDmg > 0
	{
		if my_health - contactDmg <= 0 
		{
			DealDamage(contactDmg, true);
			snd_play(sndGammaGutsKill,0,true);
			instance_create(x,y,GammaGutsBlast);
		}
		else
		{
			snd_play(sndGammaGutsProc);
			if UberCont.normalGameSpeed == 60
				contactDmg *= 0.5;
			DealDamage(contactDmg, true);
		}
		if sprite_index != spr_hurt
			snd_play(snd_hurt,hurt_pitch_variation,true);
		sprite_index = spr_hurt
		image_index = 0
		motion_add(point_direction(other.x,other.y,x,y),3)
		scrUnlockBSkin(18,"FOR DEFLECTING ENEMY CONTRACT DAMAGE");
	}
}