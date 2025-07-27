/// @description Hit it
if other.team != team and other.my_health > 0
{
	with other
	{
		snd_play(snd_hurt, hurt_pitch_variation,true)
		DealDamage(other.dmg)
		sprite_index = spr_hurt
		image_index = 0
		motion_add(other.image_angle,4)
		instance_create(x,y,Smoke)
		if other.alarm[4] < 1
		{
			other.alarm[4] = 3;
			if instance_exists(Player) && Player.skill_got[17] = 1
				snd_play(sndMorphStart,0.1,true,true);
			else
				snd_play(sndMorphStop,0.1,true,true);
			instance_create(x,y,Morph)
		}
	}
}
