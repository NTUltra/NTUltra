/// @description big splat
dmg += 18;
hitEntities = [];
var xx = x + lengthdir_x(150,direction);
var yy = y + lengthdir_y(150,direction);
var ang = direction + 180;
repeat(2)
{
	with instance_create(xx,yy,BloodStreak)
	{
		motion_add(ang,7)
		image_angle = direction;
	}
	ang += 120;
}
with instance_create(xx,yy,BloodStreak)
{
	motion_add(ang,7)
	image_angle = direction;
	snd_play(sndSuperBloodLanceCircle,0.1);
}