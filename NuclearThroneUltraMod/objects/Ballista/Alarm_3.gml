/// @description Deal damage
instance_create(x,y,Dust);
image_xscale = max(1,point_distance(x,y,colX,colY)/36);
var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	for (var i = 0; i < al; i++) {
		if hits[| i].team != team && !array_contains(hitEntities,hits[| i])
		{
			hitEntities[array_length(hitEntities)] = hits[| i];
			with hits[| i] {
				snd_play(snd_hurt, hurt_pitch_variation,true)
				my_health -= other.dmg;
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,6)
			}
		}
	}
ds_list_destroy(hits);
alarm[3] = 1;
if canBreakWalls > 0
{
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
		canBreakWalls --;
		instance_create(x,y,WallBreak);
	}
}
else if collision_line(colX,colY,
x + lengthdir_x(32,direction),
y + lengthdir_y(32,direction),
Wall,false,false)
{
	speed = 0;
	alarm[2] = 30;
	alarm[3] = 0;
	instance_create(x,y,WallBreak);
	move_contact_solid(direction,16);
}
image_xscale = 1;
colX = x;
colY = y;