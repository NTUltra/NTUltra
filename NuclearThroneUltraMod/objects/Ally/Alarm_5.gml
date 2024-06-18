/// @description Tossing Damage
if  alarm[4] > 0
{
	alarm[5] = 1;
	if alarm[0] < throwStart
	{
		
		var msk = mask_index;
		mask_index = mskAllyToss;
		if throwDamage > 0
		{
			var enems = ds_list_create();
			var al = instance_place_list(x,y,enemy,enems,false)
			for(var i = 0;i < al; i++)
			{
				if team != enems[| i].team && (enems[| i].sprite_index != enems[| i].spr_hurt || !array_contains(firstHits,enems[| i]))
				{
					firstHits[array_length(firstHits)] = enems[| i];
					if BackCont.shake < 12
						BackCont.shake += 12;
					else
						BackCont.shake += 4;
					snd_play(sndImpWristHit);
					with instance_create(x,y,Dust)
					{
						motion_add(other.direction + 90, 3);
					}
					with instance_create(x,y,Dust)
					{
						motion_add(other.direction - 90, 3);
					}
					with enems[| i] {
					{
						DealDamage(other.throwDamage,true,true,false);
						sprite_index = spr_hurt
						image_index = 0
						motion_add(other.direction,12);
						snd_play(snd_hurt, hurt_pitch_variation,true)
					}
					if speed > 3
						speed -= 2;
					}
				}
			}
			ds_list_destroy(enems);
		}
		var projs = ds_list_create();
		al = instance_place_list(x,y,projectile,projs,false)
		for(var i = 0;i < al; i++)
		{
			with projs[| i] {
				if !isGrenade && (typ == 1 || typ == 2 || typ == 3)
				{
					BackCont.shake += 2
					instance_destroy(id);
				}
			}
		}
		ds_list_destroy(projs);
		mask_index = msk;
	}
}