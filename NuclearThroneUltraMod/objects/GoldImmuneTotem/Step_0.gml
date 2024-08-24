/// @description Wow immune enemies!!??

// Inherit the parent event
event_inherited();
var al = ds_list_size(myGuys);
var deleters = [];
for (var i = 0; i < al; i++)
{
	var myGuy = myGuys[| i];
	if myGuy != noone && instance_exists(myGuy) {
		with myGuy
		{
			if sprite_index == spr_hurt
			{
				sprite_index = spr_idle;
				BackCont.shake *= 0.5;
			}
			my_health = 999;
			prevhealth = 999;
		}
		var msk = myGuy.mask_index;
		if !sprite_exists(msk)
			msk = myGuy.sprite_index;
		var w = myGuy.bbox_right - myGuy.bbox_left;
		var h = myGuy.bbox_bottom - myGuy.bbox_top;
		shieldX[| i] = myGuy.x - sprite_get_xoffset(msk)
			+ sprite_get_width(msk) * 0.5;
		shieldY[| i] = myGuy.y - sprite_get_yoffset(msk)
			+ sprite_get_height(msk) * 0.5;
		shieldRadius[| i] = min(64,max(w*0.5,h*0.5) + 4);
		var projs = ds_list_create();
		var pal = collision_circle_list(shieldX[| i],shieldY[| i],shieldRadius[| i],projectile,false,false,projs,false)
		for (var j = 0; j < pal; j++)
		{
			with projs[| j] {
				if team == 2
				{
					if typ == 0 && !canBeMoved && isLaser
					{
						var dir = point_direction(x,y,other.shieldX[| i],other.shieldY[| i]) + 180;
						var xx = other.shieldX[| i] + lengthdir_x(other.shieldRadius[| i],dir);
						var yy = other.shieldY[| i] + lengthdir_y(other.shieldRadius[| i],dir);
						var d = point_distance(xstart,ystart,xx,yy) - 1;
						x = xstart + lengthdir_x(d,image_angle);
						y = ystart + lengthdir_y(d,image_angle);
						image_xscale = point_distance(x,y,xstart,ystart)*0.5
						alarm[0] += 2;
						snd_play(sndProjectileDestroy,0.1,true);
					}
					else if typ == 1 || typ == 2
					{
						instance_destroy();
						snd_play(sndProjectileDestroy,0.1,true);
					}
				}
			}
		}
		ds_list_destroy(projs);
	}
	else
	{
		deleters[array_length(deleters)] = i;
	}
}
var dels = array_length(deleters);
for (var k = 0; k < dels; k++)
{
	ds_list_delete(myGuys,deleters[k]);
	ds_list_delete(shieldX,deleters[k]);	
	ds_list_delete(shieldY,deleters[k]);	
	ds_list_delete(shieldRadius,deleters[k]);	
}