raddrop = 0
maxhealth = 70
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(6);
event_inherited()

spr_idle = sprEliteBuffPopoIdle
spr_walk = sprEliteBuffPopoWalk
spr_hurt = sprEliteBuffPopoHurt
spr_dead = sprEliteBuffPopoDead

snd_hurt = sndEliteBuffPopoHurt
snd_dead = sndEliteBuffPopoDead
snd_play(sndEliteBuffPopoEnter,0.01,true)

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
actTime = 12;
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
maxammo = 7;
ammo = maxammo;
minFireRate = 5;
fireRate = minFireRate;