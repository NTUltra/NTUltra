raddrop = 75
maxhealth = 350;
meleedamage = 3;
mySize = 1
scrBossHealthBuff();
event_inherited()

spr_idle = sprGraveyardFishIdle
spr_walk = sprGraveyardFishWalk
spr_hurt = sprGraveyardFishHurt
spr_dead = sprGraveyardFishDead
spr_fire = sprGraveyardFishFire

snd_dead = sndOasisBossDead;
snd_hurt = sndOasisBossHurt;
snd_fire = sndOasisBossFire;
snd_melee = sndOasisBossMelee;
snd_tackle = sndOasisBossTackle;

//behavior
walk = 0
gunangle = random(360)
alarm[1] = 30+random(90)
wkick = 0
actTime = 12;

acc = 0.8;
maxSpeed = 3;