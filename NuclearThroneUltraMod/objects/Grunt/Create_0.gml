raddrop = 0
maxhealth = 8
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(3);
event_inherited()
loops = GetPlayerLoops();
projectileSpeed = 7.75;
if loops > 0
	projectileSpeed = 8;
male=choose(true,false);

spr_idle = sprGruntIdle
spr_walk = sprGruntWalk
spr_hurt = sprGruntHurt
spr_dead = sprGruntDead

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
grenades = 2
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
roll = 1
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

