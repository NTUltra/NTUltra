/// @description Aim
scrTarget()
if target != noone
{
	//Leads shot!
	var ran = irandom_range(27,30);
	var hspd = max(abs(target.hspeed),2.5);
	var vspd = max(abs(target.vspeed),2.5);
	var dir = point_direction(x,y,target.x,target.y)+90;
	var xx = target.x + lengthdir_x(hspd*ran,dir)
	var yy = target.y + lengthdir_y(vspd*ran,dir)
	gunangle1 = point_direction(x, y, xx, yy);
	dir += 180;
	xx = target.x + lengthdir_x(hspd*ran,dir)
	yy = target.y + lengthdir_y(vspd*ran,dir)
	gunangle2 = point_direction(x, y, xx, yy);
	gunangle = point_direction(x, y, target.xprevious, target.yprevious);
	
	if target.x < x
		right = -1
	else if target.x > x
		right = 1
}
else
{
	ammo = 0;
}
