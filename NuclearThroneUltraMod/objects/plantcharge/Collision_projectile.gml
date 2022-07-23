if team != other.team
{

if other.typ =1
{
	other.team = team
	other.direction = image_angle
	speed = max(speed+2,other.speed);
	other.image_angle = other.direction
	with instance_create(other.x,other.y,Deflect)
	image_angle = other.direction
	//Deflect sprite
	with other
		event_user(15);
}
if other.typ = 2
{
	with other
		instance_destroy()
}

}

