/// @description Done looping disappear now actually disappear
spr_fire = spr_disappear_end;
spr_idle = spr_idle_actual;
spr_walk = spr_idle_actual;
sprite_index = spr_fire;
spr_hurt = spr_hurt_actual;
image_index = 0;
mask_index = mskPickupThroughWall;
alarm[4] = image_number/image_speed;
alarm[1] += 90;
repeat(8)
	with instance_create(x + (xOffset*image_xscale),y,Dust) {
		motion_add(random(360),2+random(3));
	}