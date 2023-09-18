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
	scrBoltMarrow(1,2);
	with scrBoltTrail(trailColour,0.11,0.75)
	{
		image_speed -= 0.1;
	}
}
if collision_line(xprev,yprev,x,y,Wall,false,false)
{
	event_user(1);
}