/// @description Big boom

// Inherit the parent event
event_inherited();
snd_play(sndLightningCannonEnd,0.1,true)
var am = 8;
var ang = direction;
var angStep = 360/am;
repeat(am)
{
	with instance_create(x,y,UltraLightning)
	{
		image_angle = ang
		accuracy=0;
		team = other.team
		ammo = 30;
		event_perform(ev_alarm,0)
		with instance_create(x,y,LightningSpawn)
			image_angle = other.image_angle
	}
	ang += angStep;
}
instance_create(x,y,BigWallBreak);