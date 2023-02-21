/// @description Hit
if other.team != team and other.my_health > 0
{
	with instance_create(other.x,other.y,Morph)
	{
		team = other.team;
		alarm[0] -= 1;
	}
	
	with other
	{
		if UberCont.normalGameSpeed == 60
			my_health -= other.dmg*0.5;
		else
			my_health -= other.dmg
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,4)
	}
	
	if instance_exists(Player) && Player.skill_got[17] = 1 && !audio_is_playing(sndMorphStart)
			snd_play(sndMorphStart,0.1,true,true);
		else if !audio_is_playing(sndMorphStop)
			snd_play(sndMorphStop,0.1,true,true);
			
	snd_play(other.snd_hurt, other.hurt_pitch_variation,true)
	instance_create(x,y,Smoke)
}