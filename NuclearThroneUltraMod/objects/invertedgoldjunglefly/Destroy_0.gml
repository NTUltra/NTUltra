/// @description Gassbomb

// Inherit the parent event
event_inherited();
scrDrop(40,20);
instance_create(x,y,BigWallBreak);
instance_create(x,y,MaggotExplosionInverted);
instance_create(x,y,MaggotExplosionInverted);
snd_play(sndLightning1,0.1)
snd_play(sndExplosionL);
with instance_create(x,y,PurpleExplosion)
	team = other.team;

var ang = random(360);
var am = 6;
var angStep = 360/am;
var l = 7;
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