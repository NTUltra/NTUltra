/// @description 
if place_meeting(x,y,Player)
{
	alarm[1] = 6;
	motion_add(point_direction(Player.x,Player.y,x,y),1);
	image_speed = 0;
	image_index = image_number - 1;
}
else
{
	event_user(0);
}