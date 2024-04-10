/// @description Lightning anti melee

// Inherit the parent event
event_inherited();
if !sleeping
{
	snd_play(sndLightning1,0.1)
	var ang = random(360);
	var am = 12;
	var angStep = 360/am;
	var l = 10;
	repeat(am)
	{
		with instance_create(x,y,Lightning)
		{
			image_angle = ang;
			team = other.team
			ammo = l;
			event_perform(ev_alarm,0)
			with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
		}
		ang += angStep;
	}
}