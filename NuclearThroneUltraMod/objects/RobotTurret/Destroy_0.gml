scrDrop(18,0)
scrRaddrop();
event_inherited()

BackCont.shake += 5;
snd_play(sndLightning1)

var langle = random(360);
var langstep = 360/5;
repeat(5)
{
	with instance_create(x,y,UltraLightning)
	{
		fork -= 3;
		image_angle = langle;
		team = 2
		ammo = 8
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
		image_angle = other.image_angle
	}
	langle += langstep;
}