/// @description Deal damage
alarm[1] = 2;
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false)
for (var i = 0; i < al; i++)
{
	with hits[| i]
	{
		if team != other.team
		{
			DealDamage(other.dmg);
			motion_add(other.direction,2)
			if sprite_index != spr_hurt
			{
				instance_create(x,y,Morph);
				if instance_exists(Player) && Player.skill_got[17] 
					snd_play(sndMorphStart,0.1,true);
				else
					snd_play(sndMorphStop,0.1,true);
				snd_play(snd_hurt, hurt_pitch_variation)
				sprite_index = spr_hurt;
				image_index = 0;
			}
		}
	}
}
ds_list_destroy(hits);
with owner
{
	wkick = other.wkick + 1;
	if object_index != Player || !skill_got[2]
	{
		motion_add(other.image_angle+180,2)
	}
}