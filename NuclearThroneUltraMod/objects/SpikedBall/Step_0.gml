dist += 1
scrBoltMarrow(0.9);
scrBoltTrail(trailColour,0.05,2);

image_angle -= 20;
var msk = mask_index;
mask_index = mskBlade;
if place_meeting(x,y,Wall)
{
	move_bounce_solid(true)
	if dist > 80//Moves slower
	{
		instance_destroy()
	}
	else
	{
		snd_play_fire(sndPopgun)
		with instance_create(x,y,Bullet2)
		{
			motion_add(other.direction+20,14)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,Bullet2)
		{
			motion_add(other.direction,14)
			image_angle = direction
			team = other.team
		}
		with instance_create(x,y,Bullet2)
		{
			motion_add(other.direction-20,14)
			image_angle = direction
			team = other.team
		}
		snd_play(sndDiscBounce)
		with instance_create(x,y,DiscBounce)
			image_angle = other.image_angle
	}
	move_outside_solid(direction,8);
}
mask_index = msk;
