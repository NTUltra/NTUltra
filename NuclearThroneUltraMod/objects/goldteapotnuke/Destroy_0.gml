event_inherited()
scrDrop(40,0)


snd_play(sndNukeExplosion)
var ang = random(360);
var am = 6;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(16,ang),y+lengthdir_y(16,ang),Explosion)	
		team = other.team
	ang += angStep;
}
ang = random(360);
am = 3;
angStep = 360/am;
repeat(am)
{
	with instance_create(x+lengthdir_x(7,ang),y+lengthdir_y(7,ang),SmallExplosion)
		team = other.team
ang += angStep;
}


