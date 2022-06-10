raddrop = 10
maxhealth = 35
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprCardGuyIdle
spr_walk = sprCardGuyWalk
spr_hurt = sprCardGuyHurt
spr_dead = sprCardGuyDead

//snd_hurt = sndBanditHit
//snd_dead = sndBanditDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 90+random(90)
actTime = 12;

if instance_exists(Player)
{
if Player.loops>0
{
alarm[1] = 60+random(60);
actTime = 8;
}
}


wkick = 0

