scrBoltMarrow();
with scrBoltTrail(c_white,0.11,0.8)
{
	image_speed += 0.1;
}


if speed<1 && alarm[1] < 1
{
	alarm[1] = 10+random(20);//delay before destroying
	move_contact_solid(direction,16)
	image_index = 2
	image_speed = 0;
}

