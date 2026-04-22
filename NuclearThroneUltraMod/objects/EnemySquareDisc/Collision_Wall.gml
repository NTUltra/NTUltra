move_bounce_solid(false)
image_angle = direction;
if dist > 60
{
	with instance_create(x,y,DiscDisappear)
	{
		sprite_index = sprSquareDiscDisappear;
		image_angle = other.image_angle;
	}
	instance_destroy()
}
else
{
snd_play(sndDiscBounce,0.1)
with instance_create(x,y,DiscBounce)
image_angle = other.image_angle}



