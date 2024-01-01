/// @description We down
scale = 1;
BackCont.shake += 1;
friction = 0.4;
speed *= 0.9;
visible = true;
image_xscale = scale;
image_yscale = scale;
mask_index = sprGrenade;
snd_play(sndGrenadeHitWall,0.1,true)
if place_meeting(x,y,Wall) || !place_meeting(x,y,Floor)
	instance_destroy();
else if !bounce
{
	bounce = true;
	growRate -= 0.05;
	alarm[2] = 4;
}