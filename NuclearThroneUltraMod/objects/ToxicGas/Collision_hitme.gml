/*
if other.team != team && other.team != 2 && other.id != owner
{
	//Hit enemy
	with other
	{
		if sprite_index != spr_hurt 
		{
			with other
			instance_destroy()
			snd_play(snd_hurt, hurt_pitch_variation)
			my_health -= other.dmg
			sprite_index = spr_hurt
			image_index = 0
			Sleep(10)
			BackCont.shake += 1
		}
		else
		{
			scrIframeSkipper(0.2);
		}
	}
}
else */if other.team = 2 && other.team!=team && image_xscale>0.22 && alarm[11] < 1
{
	//Hit player
    with other
    {
        if sprite_index != spr_hurt
        {
	        with other
	        instance_destroy()
	        snd_play(snd_hurt, hurt_pitch_variation)
	        my_health -= 2
	        sprite_index = spr_hurt
	        image_index = 0
	        Sleep(10);
	        BackCont.shake += 1
        }
    }
}

