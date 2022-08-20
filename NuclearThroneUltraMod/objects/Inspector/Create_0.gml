raddrop = 0
maxhealth = 10
meleedamage = 0
size = 1
scrCrownOfPopoRad(4);
event_inherited()


male=choose(true,false);

spr_idle = sprInspectorIdle
spr_walk = sprInspectorWalk
spr_hurt = sprInspectorHurt
spr_dead = sprInspectorDead

if male
{
snd_hurt = sndInspectorHurtM
snd_dead = sndInspectorDeadM
snd_play(sndInspectorStartM,0.01,true);
}
else
{
snd_hurt = sndInspectorHurtM
snd_dead = sndInspectorDeadF
snd_play(sndInspectorStartF,0.01,true);
}

team = 3

//behavior
walk = 0
grenades = 4
gunangle = random(360)
alarm[1] = 30+random(15)
wkick = 0
control = 0
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

