move_bounce_solid(false)

if dist > 60
{
	instance_create(x,y,DiscDisappear)
	instance_destroy()
}
else
{
	dist += 20;
	snd_play(sndDiscBounce,0.1)
	with instance_create(x,y,DiscBounce)
	image_angle = other.image_angle
}



