/// @description Move away other hollowbones and damage/suck enemies
//Spread
var n = instance_nearest_notme(x,y,HollowBones);
if n != noone && point_distance(x,y,n.x,n.y) < sprite_width - 8
{
	var dx = x - n.x;
	var dy = y - n.y;
	var d = point_direction(0, 0, dx, dy);
	x += lengthdir_x(4,d);
	y += lengthdir_y(4,d);
}
var enems = ds_list_create();
var al = instance_place_list(x,y,hitme,enems,false);
for (var i = 0; i < al; i++)
{
	with enems[| i] {
		if other.team != team
		{
			if my_health > 0
			{
				if sprite_index != spr_hurt
				{
					snd_play(snd_hurt, hurt_pitch_variation,true);
					BackCont.shake += 2
					sprite_index = spr_hurt
					image_index = 0
				}
				var d = point_direction(x,y,other.x,other.y);
				DealDamage(other.dmg, true);
				if !place_meeting(x + lengthdir_x(1,d),y,WallHitMe)
					x += lengthdir_x(1,d);
				if !place_meeting(x,y + lengthdir_y(1,d),WallHitMe)
					y += lengthdir_y(1,d);
				walk = 0;
				speed = 0;
				if alarm[1] > 1 && alarm[1] < 20 && alarm[11] < 20
				{
					alarm[1] += 2;
					alarm[11] += 2;
				}
			}
		}
	}
}
ds_list_destroy(enems);
enems = ds_list_create();
al = instance_place_list(x,y,hitme,enems,false);
image_xscale = 2;
image_yscale = 2;
for (var i = 0; i < al; i++)
{
	with enems[| i] {
		if other.team != team && team != 0
		{
			if my_health > 0
			{
				var d = point_direction(x,y,other.x,other.y);
				if !place_meeting(x + lengthdir_x(2,d),y,WallHitMe)
					x += lengthdir_x(2,d);
				if !place_meeting(x,y + lengthdir_y(2,d),WallHitMe)
					y += lengthdir_y(2,d);
			}
		}
	}
}
ds_list_destroy(enems);
image_xscale = scale;
image_yscale = scale;
scale -= scaleDecrease;
alarm[2] = 2;