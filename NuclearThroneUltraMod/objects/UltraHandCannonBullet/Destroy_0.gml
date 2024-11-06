/// @description Explode into more bullets
var am = 16;
var angstep = 360/am;
var ang = direction;
var maxdis = 32;
while collision_point(x,y,Wall,false,false) && maxdis > 0
{
	x += lengthdir_x(1,direction+180);
	y += lengthdir_y(1,direction+180);
	maxdis --;
}
if maxdis < 32
{
	x += lengthdir_x(8,direction+180);
	y += lengthdir_y(8,direction+180);
}
repeat(am)
{
	with instance_create(x,y,Bullet4)
	{motion_add(ang,16)
	image_angle = direction
	team = other.team}
	ang += angstep;
}
	snd_play(sndExplosionS);
	BackCont.shake += 8
	