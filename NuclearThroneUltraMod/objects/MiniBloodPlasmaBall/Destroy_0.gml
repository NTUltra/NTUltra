/// @description Blood boom
snd_play(sndMeatExplo,0,true)
snd_play(sndBloodLauncherExplo,0.1,true)
with instance_create(x + lengthdir_x(16,direction) ,y + lengthdir_y(16,direction),SmallMeatExplosion)
{
	dmg = max(1,dmg-1);
}

with instance_create(x + lengthdir_x(16,direction) ,y + lengthdir_y(16,direction),BloodStreak)
{
	image_angle = random(360);
	direction = other.direction;
	speed = 1;
}
