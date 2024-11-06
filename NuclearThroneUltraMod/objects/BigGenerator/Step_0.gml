/// @description Only hurt when active
if instance_exists(IDPDTank)
{
	spr_idle = spr_inactive;
	spr_walk = spr_inactive;
	spr_hurt = spr_inactive;
}
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