raddrop = 0
maxhealth = 20
meleedamage = 0
size = 1
scrCrownOfPopoRad(2);
event_inherited()
male=choose(true,false);

spr_idle = sprBuffPopoIdle
spr_walk = sprBuffPopoWalk
spr_hurt = sprBuffPopoHurt
spr_dead = sprBuffPopoDead

if male
{
snd_hurt = sndShielderHurtM
snd_dead = sndShielderDeadM
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
bwkick = 0;
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
bfire = false;
maxammo = 6;
ammo = maxammo;
fireRate = 3;