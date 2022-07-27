/// @description fire lasers
if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLaserUpg,0.1,true)
else
snd_play(sndLaser,0.1,true)
}
else
snd_play(sndLaser,0.1,true);

with instance_create(x,y,Laser)
{image_angle = other.image_angle;
team = other.team
event_perform(ev_alarm,0)
}
alarm[2] = 3;