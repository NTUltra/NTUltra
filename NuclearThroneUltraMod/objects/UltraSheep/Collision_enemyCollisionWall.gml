/// @description Enemy Collision deal damage

// Inherit the parent event
event_inherited();

with other {
	if team != 2 && my_health > 0
	{
		if !audio_is_playing(sndGammaGutsProc)
			snd_play(sndGammaGutsProc);
		var dmg = other.dmg;
		if UberCont.normalGameSpeed == 60
		{
			dmg *= 0.5;
		}
		my_health -= dmg;
		if sprite_index != spr_hurt
			snd_play(snd_hurt, hurt_pitch_variation,true)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,3);
		if my_health <= 0
		{
			snd_play(sndGammaGutsKill,0.1);
			instance_create(x,y,GammaGutsBlast);
		}
	}
}