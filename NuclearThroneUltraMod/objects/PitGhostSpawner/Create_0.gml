raddrop = 12
maxhealth = 24
mySize = 1
event_inherited()
canFly = true;
meleedamage = 0
spr_idle = sprPitGhostSpawner;
spr_walk = sprPitGhostSpawnerWalk;
spr_hurt = sprPitGhostSpawnerHurt;
spr_dead = sprPitGhostSpawnerDead;
spr_fire = sprPitGhostSpawnerFire;

snd_hurt = sndGhostHurt
snd_dead = sndGhostDie

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 18;

acc = 1;
maxSpeed = 4.5;
materializeRange = 128;