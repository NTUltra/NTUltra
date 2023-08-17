/// @description Blood boom
snd_play(sndMeatExplo,0,true)
snd_play(sndBloodLauncherExplo,0.1,true)
instance_create(x + hspeed,y + vspeed,MeatExplosion);

with instance_create(x + speed ,y + vspeed,BloodStreak)
{
	image_angle = random(360);
	direction = other.direction;
	speed = 1;
}
