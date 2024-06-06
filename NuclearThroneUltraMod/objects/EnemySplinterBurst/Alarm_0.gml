ammo -= 1
alarm[0] = time
if instance_exists(creator)
{
	var xx;
	var yy;
	xx=creator.x;
	yy=creator.y;

	//FIRING
	snd_play(sndSplinterGun)
	with instance_create(x,y,Splinter)//5 splinters
	{
		motion_add(other.creator.gunangle+(random(other.totalAccuracy)-(other.totalAccuracy*0.5)),12+random(4))
		image_angle = direction
		team = other.team
	}
}
if ammo < 1
	instance_destroy()