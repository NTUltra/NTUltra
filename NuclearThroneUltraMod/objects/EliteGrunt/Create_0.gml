raddrop = 0
maxhealth = 40
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(5);

event_inherited()

spr_idle = sprEliteGruntIdle
spr_walk = sprEliteGruntWalk
spr_hurt = sprEliteGruntHurt
spr_dead = sprEliteGruntDead


snd_hurt = sndEliteGruntHurt
snd_dead = sndEliteGruntDead
snd_play(sndEliteGruntEnter,0.01,true)


team = 3

//behavior
walk = 0
grenades = 3
gunangle = random(360)
alarm[1] = 10+random(15)
wkick = 0
roll = 1

ammo=3;
rolltime=15+random(40);
freeze = 0
wasBehindWall = false;
scrTarget();
if target != noone && instance_exists(target)
{
lastx = target.x
lasty = target.y
direction = point_direction(x,y,target.x,target.y)+random(30)-15
gunangle=point_direction(x,y,target.x,target.y);
}
else
{
lastx = x
lasty = y
}