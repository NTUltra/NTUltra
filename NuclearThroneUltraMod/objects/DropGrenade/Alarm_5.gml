/// @description We down
scale = 1;
friction = 0.4;
visible = true;
image_xscale = scale;
image_yscale = scale;
snd_play(sndGrenadeHitWall,0.1,true)
mask_index = sprSmallGrenade;
if place_meeting(x,y,Wall) || !place_meeting(x,y,Floor)
	instance_destroy();
else if !bounce
{
	bounce = true;
	growRate -= 0.1;
	alarm[2] = 3;
}