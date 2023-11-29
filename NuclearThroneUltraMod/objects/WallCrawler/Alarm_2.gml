/// @description Animate
if instance_exists(Wall)
{
	vspeed = 0;
	hspeed = right*3;
	walk = 4;
	snd_play(sndWallCrawlerHide);
	mask_index = mskPickupThroughWall
	sprite_index = spr_hide;
	spr_idle = spr_hide;
	spr_walk = spr_idle;
	spr_hurt = spr_idle;
	image_index = 0;
	alarm[3] = image_number/image_speed;
}