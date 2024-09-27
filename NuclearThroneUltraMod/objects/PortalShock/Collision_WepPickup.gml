/// @description Opened a chest get the weppickups and move em into the portal
with other
{
	direction = point_direction(x,y,other.x,other.y);
	speed = max(2,speed);
	event_user(0);
}