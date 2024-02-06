/// @description Deal damage
instance_create(x,y,Dust);
var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	for (var i = 0; i < al; i++) {
		if hits[| i].team != team && !array_contains(hitEntities,hits[| i])
		{
			hitEntities[array_length(hitEntities)] = hits[| i];
			with hits[| i] {
				snd_play(snd_hurt, hurt_pitch_variation,true)
				DealDamage(other.dmg);
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,12);
			}
		}
	}
ds_list_destroy(hits);
alarm[3] = 1;
var walls = ds_list_create();
var al = instance_place_list(x,y,Wall,walls,false)
for (var i = 0; i < al; i++) {
	with walls[| i] {
		with instance_create(walls[| i].x,walls[| i].y,FloorExplo)
			canSpawnSwarm = true;
		instance_destroy(walls[| i]);
	}
}
ds_list_destroy(walls);
if al > 0
{
	speed -= 0.5;
	//instance_create(x,y,WallBreak);
}
if speed < 1
{
	instance_destroy();
}