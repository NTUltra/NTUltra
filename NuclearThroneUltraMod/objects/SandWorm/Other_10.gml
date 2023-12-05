/// @description Start charge
scrTarget();
if target != noone
{
	with instance_create(x,y,BigWallBreak) {
		image_xscale = other.image_xscale;
		mask_index = mskSandWormDig;
	}
	walk = 0;
	snd_play(sndSandWormDig);
	snd_play(sndBigMaggotBurrow);
	spr_fire = spr_disappear_start;
	sprite_index = spr_fire;
	mask_index = mskPickupThroughWall;
	image_index = 0;
	alarm[2] = (image_number/image_speed) - 1;
	alarm[1] += 90;
}