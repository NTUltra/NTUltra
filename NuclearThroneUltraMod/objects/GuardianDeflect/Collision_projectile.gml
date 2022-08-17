if team != other.team && other.alarm[11] < 1
{

if other.typ == 1
{
	with other
	{
		team = other.team
		direction += 180
		image_angle = direction
		speed = max(1,other.speed*0.5);
		event_user(15);
	}
}
if other.typ = 2
{
	with other
	instance_destroy()
}

}

