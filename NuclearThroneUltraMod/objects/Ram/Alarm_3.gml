/// @description set Speed
if speed > maxSpeed - 2
	maxSpeed = speed;
	
snd_play(sndSheepLoopStart);
var ang = direction;
var am = 8;
var angstep = 360/am;
repeat(am)
{
	with instance_create(x,y,Dust)
	{
		motion_add(ang,2);
	}
}