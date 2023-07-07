/// @description Keep brainwash target
with enemy
{
	if team >= 5 {
		target = instance_nearest_notme(x,y,enemy);
		if meleedamage > 0
		{
			var enems = ds_list_create();
			var bite = false;
			var al = instance_place_list(x,y,enemy,enems,false)
			for (var i = 0; i < al; i ++)
			{
				var en = enems[| i];
				if (en.sprite_index != en.spr_hurt && en.id != id)
				{
					bite = true;
					with en
					{
					    sprite_index = spr_hurt;
						image_index = 0;
						my_health -= other.meleedamage;
						snd_play(snd_hurt, hurt_pitch_variation);
					}
					i = al;
				}
			}
			if bite
			{
				snd_play(snd_melee);
			}
		}
	}
}
alarm[5] = 2;