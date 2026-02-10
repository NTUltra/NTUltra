/// @description Damage rate
hitEntities = [];
alarm[2] = damageTickRate;
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false);
var hitSomeone = false;
for (var i = 0; i < al; i++)
{
	with hits[| i]
	{
		if other.team != team and my_health > 0
		{
			hitSomeone = true;
			array_push(other.hitEntities,other.id);
			BackCont.shake += 1
			DealDamage(other.dmg, true);
			sprite_index = spr_hurt
			image_index = 0
			motion_add(other.direction,4)
			snd_play(snd_hurt, hurt_pitch_variation,true)
		}
	}
}
ds_list_destroy(hits);
if hitSomeone
	speed = min(speed + 0.5,40);