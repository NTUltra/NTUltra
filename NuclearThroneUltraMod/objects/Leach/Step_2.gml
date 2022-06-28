/// @description xxx
if owner > -1 && instance_exists(owner)
{
	x = owner.x + xOffset;
	y = owner.y + yOffset;
}
else
{
	snd_play(sndMeatExplo,0,true)
	snd_play(sndBloodLauncherExplo,0,true)
	instance_create(x,y,MeatExplosion);

	var ang = random(360)

	with instance_create(x,y,BloodStreak)
	image_angle = ang

	with instance_create(x,y,BloodStreak)
	image_angle = ang+120

	with instance_create(x,y,BloodStreak)
	image_angle = ang+240
	

	instance_destroy();	
}