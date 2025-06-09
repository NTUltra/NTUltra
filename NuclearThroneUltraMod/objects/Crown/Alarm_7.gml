/// @description Deal damage to enemies touching this
alarm[7] = 2;
if !instance_exists(Player) || (!Player.isInvisible || instance_exists(ThiefStealthDurationDelay))
	with instance_place(x,y,enemy)
	{
		if team != 2
		{
			my_health -= 6;
			sprite_index = spr_hurt;
			image_index = 0;
			snd_play(snd_hurt,hurt_pitch_variation);
		}
	}