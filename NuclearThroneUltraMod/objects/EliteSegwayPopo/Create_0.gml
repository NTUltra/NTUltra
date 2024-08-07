raddrop = 0
maxhealth = 42
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(5);
event_inherited()

friction = 0.2

spr_idle = sprEliteSegwayIDPDIdle
spr_walk = sprEliteSegwayIDPDWalk
spr_hurt = sprEliteSegwayIDPDHurt
spr_dead = sprEliteSegwayIDPDDead

snd_play(sndEliteSegwayEnter,0.01,true)
snd_hurt = sndEliteSegwayHurt
snd_dead = sndEliteSegwayDead
team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 15+random(10)
alarm[5] = 1;


wkick = 0
angle = 0
wepangle = choose(-140,140)
wepflip = 1
smackTell = 8;
smackDetectionRange = 72;
goForSmackRange = 150;
smackRange = 8;
smackSpeed = 6;
tellTime = 14;
actTime = 8;
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
sniperOffset = 2;
stuck=false;
maxSpeed = 4.8;
shootingMovementSpeed = 0.8;
minMovementSpeed = 1.4;
sleeping = false;
acc = 2;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;