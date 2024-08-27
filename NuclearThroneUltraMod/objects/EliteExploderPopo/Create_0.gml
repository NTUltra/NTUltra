raddrop = 0
maxhealth = 25
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(4);
event_inherited()
male=choose(true,false);

spr_idle = sprEliteExploderPopo
spr_walk = sprEliteExploderPopoWalk
spr_hurt = sprEliteExploderPopoHurt
spr_dead = sprEliteExploderPopoDead

snd_hurt = sndEliteExploderHurt
snd_dead = sndEliteExploderDead
snd_play(sndEliteExploderEnter,0.01,true)

team = 3

//behavior
walk = 0
gunangle = random(360);
alarm[1] = 30+random(15)
wkick = 0
freeze = 0
actTime = 11;

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
wasBehindWall = false;
sleeping = false;
if instance_exists(Player) && Player.skill_got[29]
	sleeping = true;