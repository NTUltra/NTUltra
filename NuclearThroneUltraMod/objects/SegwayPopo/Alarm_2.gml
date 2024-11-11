/// @description Fire
snd_play(sndLaser)

var sprt = sprPopoLaser;
var sprtS = sprPopoLaserStart;
var sprE = sprPopoLaserEnd;
if team == 2
	sprt = sprLaser;
var md = 20;
if instance_exists(Player) && Player.skill_got[12]
{
	md *= 0.75;
}
with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+6
team = other.team
maxDistance = md;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3
team = other.team
maxDistance = md;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-6
team = other.team
maxDistance = md;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3+12
team = other.team
maxDistance = 36;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}

with instance_create(x,y,IDPDLaser)
{image_angle = other.gunangle+random(6)-3-12
team = other.team
maxDistance = 36;
event_perform(ev_alarm,0)
sprite_index = sprt;sprStart = sprtS; sprEnd = sprE;}



Sleep(10);
BackCont.shake += 2
wkick = 10

