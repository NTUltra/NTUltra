if !instance_exists(Player)
{instance_destroy();
exit;}
alarm[0]=reload
var currentMx = UberCont.mouse__x;
var currentMy = UberCont.mouse__y;
if instance_exists(enemy)
{
	var dis = 99999;
	var n = noone;
	with enemy
	{
		var nd = point_distance(x,y,other.x,other.y);
		if nd < dis && collision_line(x,y,other.x,other.y,Wall,false,false) < 0
		{
			dis = nd;
			n = id;
		}
	}
	if n != noone
	{
		gunangle = point_direction(x,y,n.x,n.y);
		mx = n.x;
		my = n.y;
	}
	else
		exit;
}
else
	exit;
UberCont.mouse__x = mx;
UberCont.mouse__y = my;
scrFire();
UberCont.mouse__x = currentMx;
UberCont.mouse__y = currentMy;

wepammo-=wepcost;

if wepammo <= 0
	instance_destroy()
