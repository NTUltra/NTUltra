ammo -= 1

alarm[0] = time


if instance_exists(creator)
{
//FIRING
	snd_play(sndLaserCannon,0.1,true);
	with instance_create(UberCont.mouse__x,UberCont.mouse__y,IonImpact)
	{
	team = other.team}
	BackCont.shake += 2
	creator.wkick = 6
}

if ammo <= 0
{
	endx = UberCont.mouse__x;
	endy = UberCont.mouse__y;
	alarm[2] = 5;
	alarm[0] = 0;
}