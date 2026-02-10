/// @description Explode into more bullets
var am = 5;
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
	with instance_create(x,y,Splinter)
	{motion_add(ang,other.speed + 2)
	image_angle = direction
	team = other.team}
	ang += angstep;
}
if !audio_is_playing(sndSplinterPistol)
	snd_play(sndSplinterPistol,0.01,true);
	BackCont.shake += 5
	