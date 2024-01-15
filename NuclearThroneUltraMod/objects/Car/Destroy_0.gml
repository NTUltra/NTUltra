var ang = random(360)
repeat(3)
{
	instance_create(x+lengthdir_x(10,ang),y+lengthdir_y(10,ang),Explosion)
	ang += 120;
}
ang += 60
repeat(3)
{
	instance_create(x+lengthdir_x(24,ang),y+lengthdir_y(24,ang),SmallExplosion)
	ang += 120;
}

//instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

