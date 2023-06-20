maxhealth = 12
mySize = 1

spr_idle = sprFrogEggSpawn
spr_hurt = sprFrogEggHurt
spr_dead = sprFrogEggDead

event_inherited()

team=2;

snd_play(choose(sndFrogEggSpawn1,sndFrogEggSpawn2,sndFrogEggSpawn3))

snd_hurt = sndFrogEggHurt
alarm[0]=20+irandom(50);

scrInitDrops(1);