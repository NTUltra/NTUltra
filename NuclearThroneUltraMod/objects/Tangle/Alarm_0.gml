/// @description Damage enemies
if sprite_index == sprTangleUpg || sprite_index == sprTangleVineUpg
{
	var hitNews = ds_list_create();
	var al = instance_place_list(x,y,enemy,hitNews,false);
	for (var i = 0; i < al; i++) {
		if !array_contains(hitEntities,hitNews[| i])
		{
			hitEntities[array_length(hitEntities)] = hitNews[| i];
			with hitNews[| i] {
				var tangle = ds_list_create();
				var tal = instance_place_list(x,y,Tangle,tangle,false);
				for (var j = 0; j < tal; j++) {
					with tangle[| j] {
						hitEntities[array_length(hitEntities)] = other.id;
					}
				}
				ds_list_destroy(tangle);
				DealDamage(other.dmg);
				sprite_index = spr_hurt;
				image_index = 0;
				snd_play(snd_hurt, hurt_pitch_variation,true);
				with instance_create(x,y,BloodStreak)
				{
					motion_add(random(360),6 + random(4));
					image_angle = direction
				}
			}
		}
	}
	ds_list_destroy(hitNews);
	var hitTotem = ds_list_create();
	al = instance_place_list(x,y,GoldTotem,hitTotem,false);
	for (var i = 0; i < al; i++) {
		if !array_contains(hitEntities,hitTotem[| i])
		{
			hitEntities[array_length(hitEntities)] = hitTotem[| i];
			with hitTotem[| i] {
				var tangle = ds_list_create();
				var tal = instance_place_list(x,y,Tangle,tangle,false);
				for (var j = 0; j < tal; j++) {
					with tangle[| j] {
						hitEntities[array_length(hitEntities)] = other.id;
					}
				}
				ds_list_destroy(tangle);
				DealDamage(other.dmg);
				sprite_index = spr_hurt;
				image_index = 0;
				snd_play(snd_hurt, hurt_pitch_variation,true);
				with instance_create(x,y,BloodStreak)
				{
					motion_add(random(360),6 + random(4));
					image_angle = direction
				}
			}
		}
	}
	ds_list_destroy(hitTotem);
}
hitEntities = [];
alarm[0] = 14;