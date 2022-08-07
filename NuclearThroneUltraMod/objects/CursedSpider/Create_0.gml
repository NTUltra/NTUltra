raddrop = 9
maxhealth = 26//18
meleedamage = 4
size = 1

event_inherited()

spr_idle = sprInvSpiderIdle
spr_walk = sprInvSpiderWalk
spr_hurt = sprInvSpiderHurt
spr_dead = sprInvSpiderDead

snd_hurt = choose(sndSalamanderHurt, sndGatorHit, sndRavenHit, sndBanditHit, sndSniperHit, sndScorpionHit, sndRatHit)
snd_dead = choose(sndBanditDie, sndRatDie, sndRavenDie, sndScorpionDie, sndBigMaggotDie, sndGatorDie, sndSalamanderDead)

//behavior
walk = 0
alarm[1] = 30+random(90)
maxSpeed = 3.5

if instance_exists(Player)
{
if Player.loops>0
maxSpeed = 5
}

alarm[2] = 5
generation = 0;
