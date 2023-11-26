/// @description Turn around
spr_fire = spr_turn_around;
image_index = 0;
sprite_index = spr_fire;
alarm[8] = (image_number/image_speed);
alarm[1] += alarm[8];
with instance_create(x,y,BigWallBreak) {
	image_xscale = other.image_xscale*-1;
	mask_index = mskSandWormDig;
}