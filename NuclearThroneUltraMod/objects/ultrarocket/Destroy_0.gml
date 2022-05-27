audio_stop_sound(snd)

snd_play(sndExplosionXL)
snd_play(sndNukeExplosion);
var ang = random(360);
var d = 24;
var am = 3;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(d,ang),y+lengthdir_y(d,ang),GreenExplosion)
		scrCanHumphry();
	with instance_create(x,y,UltraFlame)
	{
		team = other.team;
		motion_add(ang,2);	
	}
	with instance_create(x+lengthdir_x(d,ang),y+lengthdir_y(d,ang),UltraFlame)
	{
		team = other.team;
		motion_add(ang,2);	
	}
	ang += angStep;
}

am = 6;
d = 48
ang += angStep * 0.5;
angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(d,ang),y+lengthdir_y(d,ang),GreenExplosion)
		scrCanHumphry();
	with instance_create(x+lengthdir_x(d,ang),y+lengthdir_y(d,ang),UltraFlame)
	{
		team = other.team;
		motion_add(ang,2);	
	}
	ang += angStep;
}