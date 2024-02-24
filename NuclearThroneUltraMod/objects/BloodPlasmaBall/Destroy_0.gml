/// @description Blood boom
snd_play(sndMeatExplo,0,true)
snd_play(sndBloodLauncherExplo,0.1,true)
instance_create(x + lengthdir_x(16,direction) ,y + lengthdir_y(16,direction),MeatExplosion);

with instance_create(x + lengthdir_x(16,direction) ,y + lengthdir_y(16,direction),BloodStreak)
{
	image_angle = random(360);
	direction = other.direction;
	speed = 1;
}
