raddrop = 8
maxhealth = 6
meleedamage = 0
size = 1

event_inherited()

spr_idle = sprSniperIdle
spr_walk = sprSniperWalk
spr_hurt = sprSniperHurt
spr_dead = sprSniperDead



snd_hurt = sndSniperHit

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 60+random(90)
gonnafire = 0
wkick = 0
proj = EnemyBullet4;
if GetPlayerLoops() > 11
proj = EnemyBullet1Square;
