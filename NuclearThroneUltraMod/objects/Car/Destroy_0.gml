var ang = random(360)
repeat(3)
{
	instance_create(x+lengthdir_x(12,ang),y+lengthdir_y(12,ang),Explosion)
	ang += 120;
}
ang += 60
repeat(3)
{
	instance_create(x+lengthdir_x(28,ang),y+lengthdir_y(28,ang),SmallExplosion)
	ang += 120;
}

//instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

