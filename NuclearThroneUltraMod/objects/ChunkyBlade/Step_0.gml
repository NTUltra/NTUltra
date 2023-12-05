

scrBladeBoltMarrow();

image_angle -= 20;
var msk = mask_index;
mask_index = mskBlade;
if place_meeting(x,y,Wall)
{
	move_bounce_solid(false)
	if dist > 80//Moves slower
	{
		with instance_create(x,y,DiscDisappear)
			sprite_index = sprChunkyBladeDisappear
		instance_destroy()
	}
	else
	{
		snd_play(sndDiscBounce)
		with instance_create(x,y,DiscBounce)
			image_angle = other.image_angle}
}
mask_index = msk;
