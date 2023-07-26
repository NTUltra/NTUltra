if speed<1 && alarm[1] < 1
{
	alarm[1] = 10+random(20);//delay before destroying
	move_contact_solid(direction,16)
	image_index = 2
	image_speed = 0;
	speed = 0;
}
else if um == 0 || alarm[11] < 1
{
	scrBoltMarrow();
	with scrBoltTrail(other.trailColour,0.11,0.75)
	{
		image_speed -= 0.1;
	}
}

