/// @description Randomize appear again
mask_index = mskPickupThroughWall;
sprite_index = spr_disappear_end;
image_index = image_number - 2;
image_speed = 0;

alarm[5] = actTime + irandom(10);
alarm[1] += 90;