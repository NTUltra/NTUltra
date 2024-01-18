/// @description Explosions
alarm[1] = 9;

if alarm[0] < 10
{
	instance_create(x,y,PurpleExplosion);
	snd_play_2d(sndExplosionXXL);
	BackCont.shake += 40;
	Sleep(20);
	disStep += 6;
	amPlus = amStep;
	disPlus = disStep;
	boom = GreenExplosion;
	rings = 8;
	ringTime = 1;
}
else
{
	snd_play_2d(sndExplosionXL);
	instance_create(x,y,GreenExplosion);
	var gang = random(360);
	repeat(3)
	{
		var xx = x + lengthdir_x(32,gang);
		var yy = y + lengthdir_y(32,gang);
		instance_create(xx,yy,GreenExplosion);
		gang += 120;
	}
	rings = 4;
}
dis = disPlus;
am = amPlus;
event_perform(ev_alarm,2);
disPlus += disStep;
amPlus += amStep;