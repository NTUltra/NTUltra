snd_play(sndFlareExplode,0.1,true)
var ang = random(360);
var am = 10;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x-lengthdir_x(8,direction),y-lengthdir_y(8,direction),TrapFire)
	{
		motion_add(ang,1.5+random(1))
		team = other.team
	}
	ang += angStep;
}
