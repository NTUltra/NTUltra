event_inherited();

if other.team != team and other.my_health > 0
{


if alarm[1] < 1
{
	alarm[1] = 10;
	snd_play(sndPlasmaHit);
	instance_create(x,y,PlasmaImpact);
}
}

