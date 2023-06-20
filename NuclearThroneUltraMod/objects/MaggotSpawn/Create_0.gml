raddrop = 5
maxhealth = 12
meleedamage = 0
mySize = 2



event_inherited()

spr_idle = sprMSpawnIdle
spr_walk = sprMSpawnIdle
spr_hurt = sprMSpawnHurt
spr_chrg = sprMSpawnChrg
spr_dead = sprMSpawnDead

snd_dead = sndMaggotSpawnDie


motion_add(random(360),2);
scrAddDrops(1);