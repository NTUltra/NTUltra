/// @description Damage frame

if !audio_is_playing(sndWallBreak)
	snd_play_2d(sndWallBreak);

var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false);
for (var i = 0; i < al; i++)
{
	with hits[| i]
	{
		if team != other.team && sprite_index!=spr_hurt
		{
			if object_index == Player
				hitBy = other.sprite_index;
			DealDamage(other.dmg)
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.image_angle,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}	
	}
}