raddrop = 0
maxhealth = 10
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
snd_hurt = sndSegwayHurtM
snd_dead = sndSegwayDeadM
snd_play(sndSegwayEnterM,0.01,true)
}
else
{
snd_hurt = sndSegwayHurtF
snd_dead = sndSegwayDeadF
snd_play(sndSegwayEnterF,0.01,true)
}
wasBehindWall = false;
team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 15+random(10)


wkick = 0
angle = 0
tellTime = 21;
actTime = 12;
if GetPlayerLoops() > 0
{
	tellTime = 16;
	actTime = 10;
}
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

sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;
