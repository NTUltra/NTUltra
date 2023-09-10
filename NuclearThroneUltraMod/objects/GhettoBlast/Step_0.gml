/// @description Hit hitme
var msk = mask_index;
mask_index = mskBigPandaSlash;
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false)
for (var i = 0; i < al; i++) {
	with hits[| i]
	{
		var inArray = array_contains(other.hitEntities,id)
		if other.team != team && (!inArray || sprite_index != spr_hurt)
		{
			if !inArray
				other.hitEntities[array_length(other.hitEntities)] = id;
			other.alarm[1] = other.hitDelay;
			if sprite_index != spr_hurt
			{
				snd_play(snd_hurt, hurt_pitch_variation)
				my_health -= other.dmg
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.direction,8)
			
				BackCont.shake += 5
			}
			motion_add(other.direction,6)
			if speed > maxSpeed+1
				speed = maxSpeed+1;
		}
	}
	image_speed = is;
}
ds_list_destroy(hits);
var projs = ds_list_create();
var al = instance_place_list(x,y,projectile,projs,false)
for (var i = 0; i < al; i++) {
	with projs[| i]
	{
		if isGrenade
		{
			scrDeflectNade(other.direction);
			Sleep(10);
			BackCont.shake += 5;
		}
		else if team != other.team
		{
			if typ == 1
			{
				team = other.team
				direction = other.image_angle
				image_angle = direction
				with instance_create(x,y,Deflect)
					image_angle = other.direction
				//Deflect sprite
				event_user(15);
			}
			else if typ = 2
			{
				instance_destroy()
			}
		}
	}
	image_speed = is;
}

if place_meeting(x,y,Wall)
{
	image_speed = is;
	speed *= 0.9;
}
mask_index = msk;