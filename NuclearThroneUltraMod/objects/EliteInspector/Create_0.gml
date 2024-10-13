raddrop = 0
maxhealth = 40
meleedamage = 0
mySize = 1
scrCrownOfPopoRad(6);
event_inherited()


male=choose(true,false);

spr_idle = sprEliteInspectorIdle
spr_walk = sprEliteInspectorWalk
spr_hurt = sprEliteInspectorHurt
spr_dead = sprEliteInspectorDead


snd_hurt = sndEliteInspectorHurt
snd_dead = sndEliteInspectorDead
snd_play(sndEliteInspectorEnter,0.01,true);


team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
control = 0
angle = 0
wasBehindWall = false;
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
dodgethis=0;

wepangle = choose(-140,140)
wepflip = 1
dodge=0;
canDodge = false;
alarm[3] = 2;
actTime = 10;
loops = GetPlayerLoops();
maxSpeed = 3;
range = 70;
tellTime = 8;
if loops > 2
{
	actTime = 8;
	maxSpeed = 3.2;
	range += 16;
	tellTime -= 1;
}