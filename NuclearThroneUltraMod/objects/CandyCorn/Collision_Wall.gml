/// @description Different bounce sound
move_bounce_solid(false)

if dist > 40
{
instance_create(x,y,DiscDisappear)
instance_destroy()
}
else
{
	snd_play(choose(sndCandyCornBounce1,sndCandyCornBounce2,sndCandyCornBounce3),0.1)
	if boltMarrowed
		direction = scrAimAssistLaser(direction,0.75,16, true);
	with instance_create(x,y,DiscBounce)
	image_angle = other.image_angle
}



