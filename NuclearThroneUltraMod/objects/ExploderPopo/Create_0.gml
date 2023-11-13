raddrop = 0
maxhealth = 6
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(3);
event_inherited()
male=choose(true,false);

spr_idle = sprExploderPopo
spr_walk = sprExploderPopoWalk
spr_hurt = sprExploderPopoHurt
spr_dead = sprExploderPopoDead

if male
{
snd_hurt = sndGruntHurtM
snd_dead = sndGruntDeadM
snd_play(sndGruntEnterM,0.01,true)
}
else
{
snd_hurt = sndGruntHurtF
snd_dead = sndGruntDeadF
snd_play(sndGruntEnterF,0.01,true)
}

team = 3

//behavior
walk = 0
gunangle = random(360);
alarm[1] = 30+random(15)
wkick = 0
freeze = 0
actTime = 10;

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