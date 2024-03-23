raddrop = 0
maxhealth = 2
meleedamage = 1
mySize = 0
my_health = 2;

event_inherited()

spr_idle = sprFriendlyMaggotIdle
spr_walk = sprFriendlyMaggotIdle
spr_hurt = sprFriendlyMaggotHurt
spr_dead = sprFriendlyMaggotDead

snd_hurt = sndHitFlesh
snd_dead = sndEnemyDie
snd_melee = sndMaggotBite
//behavior
alarm[1] = 2;
ignoreOverlap = true;
charge = false;
maxSpeed = 3;
actTime = 15;
target = noone;
dmg = 4;
hurt_pitch_variation = 0.05;
scrInitDrops(1);