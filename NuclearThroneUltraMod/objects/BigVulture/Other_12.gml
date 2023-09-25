/// @description Aim
scrTarget()
if target != noone
{
	//Leads shot!
	var ran = irandom_range(0,4);
	var xx = target.x + (target.hspeed*ran)
	var yy = target.y + (target.vspeed*ran)
	gunangle = point_direction(x, y, xx, yy);
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else
{
	ammo = 0;
}