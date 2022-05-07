/// @description overwrite enemy overlap code
if meleedamage > 0 && other.sprite_index!=other.spr_hurt
{
	with other
	{
		my_health -= other.meleedamage;
		sprite_index = spr_hurt
		image_index = 0
		snd_play(snd_hurt, 0.1,true)
	}
}
