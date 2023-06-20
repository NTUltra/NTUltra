raddrop = 0
maxhealth = 9
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(4);
event_inherited()

friction = 0.2

spr_idle = sprSegwayIDPDIdle
spr_walk = sprSegwayIDPDWalk
spr_hurt = sprSegwayIDPDHurt
spr_dead = sprSegwayIDPDDead

male=choose(false,true);
if male
{
snd_hurt = sndGruntHurtM
snd_dead = sndGruntDeadM
}
else
{
snd_hurt = sndGruntHurtF
snd_dead = sndGruntDeadF
}

team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 7+random(6)


wkick = 0
angle = 0

freeze = 0
if instance_exists(Player)
{
lastx = Player.x
lasty = Player.y
}
else
{
lastx = x
lasty = y
}
alarm[3] = 20;
stuck=false;

