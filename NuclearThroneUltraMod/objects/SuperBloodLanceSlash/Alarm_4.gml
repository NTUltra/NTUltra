/// @description big splat
var xx = x + lengthdir_x(150,direction);
var yy = y + lengthdir_y(150,direction);
snd_play(sndExplosionS);
snd_play(sndMeatExplo);
var ang = direction + 180;
repeat(3)
{
	with instance_create(xx,yy,BloodStreak)
	{
		motion_add(ang,7)
		image_angle = direction;
	}
	ang += 120;
}