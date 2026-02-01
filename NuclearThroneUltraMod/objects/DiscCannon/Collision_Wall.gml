/// @description
move_bounce_solid(false)

if dist > 50
{
with instance_create(x,y,DiscDisappear)
	sprite_index = sprDiscCannonDisappear;
instance_destroy()
}
else
{
	snd_play(sndDiscBounce,0.1);
	snd_play(sndDiscgun,0.1);
	with instance_create(x,y,DiscBounce)
	{
		sprite_index = sprDiscCannonBounce;
		image_angle = other.image_angle;
	}
	var ang  = direction;
	repeat(3)
	{
		with instance_create(x,y,Disc)
		{
			motion_add(ang,7);
			image_angle = direction
			team = other.team
		}
		ang += 120;
	}
}
speed = clamp(speed - 1,2,5);