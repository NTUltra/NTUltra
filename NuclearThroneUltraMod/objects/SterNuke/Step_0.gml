if active = 1
{
instance_create(x,y,Smoke)
if speed > 5.2
speed = 5.2

motion_add(point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y),0.4)
motion_add(direction,0.1)

BackCont.shake+=10;

if BackCont.shake < 100
BackCont.shake = 100
}

image_angle = direction
if instance_exists(Player)
{
if Player.skill_got[17] = 1
snd_play(sndLaserUpg)
else
snd_play(sndLaser)
}
else
snd_play(sndLaser);

with instance_create(x,y,Laser)
{image_angle = other.image_angle;
team = other.team
event_perform(ev_alarm,0)
}

