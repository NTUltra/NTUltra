/// @description VOID DASH
wepflip *= -1;
var dis = 48;
snd_play(sndVoidMegaSlash);
BackCont.shake += 30;
with instance_create(x + lengthdir_x(dis,gunangle),y + lengthdir_y(dis,gunangle),VoidMasterAttack)
{
	image_angle = other.gunangle;
	motion_add(image_angle,3);
}
var dashDis = 400;
var n = instance_nearest(x + lengthdir_x(dashDis,gunangle),y + lengthdir_y(dashDis,gunangle), Floor)
if n != noone
{
	var xo = x;
	var yo = y;
	var o = 16;
	if n.object_index == FloorExplo
		o = 8;
	x = n.x + o;
	y = n.y + o;
	scrForcePosition60fps();
	var repeats = point_distance(xo,yo,x,y) / 24;
	var xx = xo;
	var yy = yo;
	var xstep = lengthdir_x(24,gunangle);
	var ystep = lengthdir_y(24,gunangle);
	for (var i = 0; i < repeats; i ++)
	{
		with instance_create_depth(xx,yy,depth,AnimDestroyTop)
		{
			sprite_index = sprVoidMasterDash;
			image_xscale = other.right;
			image_angle = other.gunangle;
			image_alpha = 0.5;
		}
		xx += xstep;
		yy += ystep;
	}
	xx = xo;
	yy = yo;
	repeats *= 4;
	xstep *= 0.25;
	ystep *= 0.25;
	for (var i = 0; i < repeats; i ++)
	{
		with instance_create_depth(xx + random_range(12,-12),yy + random_range(12,-12),depth,PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(other.gunangle,2);
		}
		xx += xstep;
		yy += ystep;
	}
	sprite_index = sprVoidMasterDashEnd;
}
alarm[1] = actTime * 2;