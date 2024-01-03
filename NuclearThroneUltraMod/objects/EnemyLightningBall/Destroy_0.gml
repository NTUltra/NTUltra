
snd_play(choose(sndLightning3,sndThunder));
var ang = random(360);
var am = 4;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,Lightning)
	{image_angle = ang;
	team = other.team
	ammo = 2+irandom(2);
	event_perform(ev_alarm,0)
	with instance_create(x,y,LightningSpawn)
	image_angle = other.image_angle}
	ang += angStep;
}

