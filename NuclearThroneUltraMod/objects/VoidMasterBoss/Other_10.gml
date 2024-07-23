/// @description I am about to fuck you up DASH
gunangle = point_direction(x,y,target.x,target.y);
wepangle = 0;
walk = tellTime;
direction = gunangle;
speed = acc;
alarm[1] += tellTime + 4;
alarm[2] = tellTime + 4;
alarm[3] = tellTime - 24;
snd_play_2d(sndVoidEyeCreeping);
BackCont.shake += 10
BackCont.viewx2 += lengthdir_x(8,gunangle+180)*UberCont.opt_shake
BackCont.viewy2 += lengthdir_y(8,gunangle+180)*UberCont.opt_shake
if target.x > x
	right = -1
else
	right = 1

var xx = x;
var yy = y;
var xstep = lengthdir_x(8,gunangle);
var ystep = lengthdir_y(8,gunangle);
repeat(12)
{
	with instance_create(xx + random_range( 8,-8),yy + random_range(8,-8),PlutoFX)
	{
		sprite_index = sprVoidBulletTrail;
		image_index = irandom(image_number - 1);
		motion_add(other.gunangle,1+random(1));
	}
	xx += xstep;
	yy += ystep;
}