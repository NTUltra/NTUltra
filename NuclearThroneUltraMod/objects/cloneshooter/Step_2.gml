/// @description Stay at mouse
speed = 0;
if instance_exists(Player)
{
theAim = point_direction(Player.x,Player.y,UberCont.mouse__x,UberCont.mouse__y);
x = UberCont.mouse__x + lengthdir_x(2,theAim+180);
y = UberCont.mouse__y + lengthdir_y(2,theAim+180);
}
else 
	instance_destroy();