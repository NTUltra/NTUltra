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
					snd_play(sndMorphStart);
				else
					snd_play(sndMorphStop);
				snd_play(snd_hurt, hurt_pitch_variation)
				sprite_index = spr_hurt;
				image_index = 0;
			}
		}
	}
}
ds_list_destroy(hits);