/// @description Fire
if goToTarget
	exit;
sprite_index = spr_fire;
image_index = 0;
alarm[3] = image_number/image_speed;
snd_play(sndGhostLaser,0.1)
var sprt = sprPopoLaser;
var sprtS = sprPopoLaserStart;
var sprE = sprPopoLaserEnd;
if team == 2
	sprt = sprLaser;
with instance_create(x,y,GhostLaser)
{image_angle = other.gunangle
team = other.team
maxDistance = 4;
laserDecrease -= 0.15;
laserDecrease = max(laserDecrease,0.05);
alarm[2] += 12;
image_yscale = 0.25;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}
walk = 0;