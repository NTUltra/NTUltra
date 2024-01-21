/// @description Laser
alarm[2] = laserDelay;
snd_play(sndLaserUpg)
with instance_create(x,y + laserY,IDPDLaser)
{
	image_xscale += 2;
	image_angle = 270;
	team = other.team
	event_perform(ev_alarm,0)
}

