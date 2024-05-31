/// @description Fire
snd_play(sndLaser)

var sprt = sprPopoLaser;
var sprtS = sprPopoLaserStart;
var sprE = sprPopoLaserEnd;
if team == 2
	sprt = sprLaser;
with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+8
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-8
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+16
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-16
team = other.team
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}



Sleep(10);
BackCont.shake += 2
wkick = 10

