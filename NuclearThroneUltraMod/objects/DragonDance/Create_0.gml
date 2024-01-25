/// @description Start a bullet party
width = 320;
height = 320;
spawnRate = 140;
alarm[0] = (spawnRate*0.5) + 1;
alarm[1] = 1;
step = 96;
projectileSpeed = 1.75;
loops = GetPlayerLoops();
if loops > 0
{
	spawnRate -= 20;
	step -= 16;
	projectileSpeed += 0.25;
}
/*
var ang = 90;
var len = 96;
var am = 8;
var gap = 12;
var angStep = 360/(am + gap);
var i = 0;
repeat(am)
{
	with instance_create(xstart,ystart - 32,DragonSpinProjectile)
	{
		//time = degtorad(ang);
		repeat(i*2)
			event_perform(ev_alarm,5);
	}
	i ++;
	ang -= angStep;
}
*/