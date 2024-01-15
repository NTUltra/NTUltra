var ang = random(360)
repeat(3)
{
	instance_create(x+lengthdir_x(12,ang),y+lengthdir_y(12,ang),Explosion)
	ang += 120;
}
ang += 60
repeat(4)
{
	instance_create(x+lengthdir_x(30,ang),y+lengthdir_y(30,ang),SmallExplosion)
	ang += 90;
}

instance_create(x,y+6,Scorchmark)
event_inherited()

snd_play(sndExplosionCar)

