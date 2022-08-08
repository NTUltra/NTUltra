var ang = direction;
var angStep = 360/lines;
ang += angStep*0.5;
repeat(lines)
{
	with instance_create(x,y,ExplosionQueueLine)
	{
		theDirection = ang;
	}
	ang += angStep;
}
Sleep(20)
repeat(6)
{
	with instance_create(x,y,Smoke)
		motion_add(random(360),random(3))
}

BackCont.shake += 8
snd_play(sndFlakExplode);
snd_play(sndExplosionCar);
instance_create(x,y,Explosion)
