var ps = 2;
var ang = random(360);
var am = 18;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,TrapFire)
	{	
		motion_add(ang,ps)
		sprite_index = sprFireLilHunter
		team = other.team
	}
	ang += angStep;
}
scrDrop(90,0)
snd_play(sndExplosion)
instance_create(x,y,Explosion)
audio_stop_sound(sndDragonLoop)

am = 4;
angStep = 90;
ang = meteorAngle;
var spd = 1.5;
repeat(am)
{
	with instance_create(x,y,DragonDanceProjectile)
	{
		direction = ang;
		image_angle = direction;
		speed = spd;
		tdir += 0.04;
		offset -= 1.5;
	}
	ang += angStep;
}