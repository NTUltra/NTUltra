/// @description Fire long range laser
snd_play(sndLaser)
var sprt = sprPopoLaser;
var sprtS = sprPopoLaserStart;
var sprE = sprPopoLaserEnd;
if team == 2
	sprt = sprLaser;
with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+other.sniperOffset
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle-other.sniperOffset
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

Sleep(10);
BackCont.shake += 2
wkick = 10

