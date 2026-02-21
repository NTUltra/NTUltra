event_inherited()

if walk > 0
{
	walk -= 1
	motion_add(direction,acc)
}
if alarm[2] < 4 && gonnaShoot
{
	gonnaShoot = false;
	sprite_index = spr_fire;
	image_index = 0;
	snd_play(sndScrapDogFire);
}
if speed > maxSpeed
	speed = maxSpeed