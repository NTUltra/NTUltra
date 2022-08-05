/// @description Aim overwrite

if instance_exists(Marker)
{
	mouse__x = Marker.x;
	mouse__y = Marker.y;
}
else
{
	mouse__x = mouse_x;
	mouse__y = mouse_y;
}