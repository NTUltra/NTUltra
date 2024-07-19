/// @description Only hurt when active
if spr_idle == spr_active
{
	event_inherited();
}
else
{
	my_health = maxhealth;
}
speed = 0;
x = xstart;
y = ystart;