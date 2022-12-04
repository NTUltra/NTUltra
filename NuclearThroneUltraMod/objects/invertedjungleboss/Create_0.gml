event_inherited()
raddrop = 170
maxhealth = 320//365
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprInvertedBushBox
spr_walk = sprInvertedBushBoxWalk
spr_hurt = sprInvertedBushBoxHurt
spr_dead = sprInvertedBushBoxDead

snd_hurt = sndHitPlant
snd_dead = sndJungleAssassinDead

//behavior
snd_play(sndAssassinPretend);
walk = 0
alarm[1] = 30;
alarm[2] = 5;
maxChargeSpeed = 14;
firstTime = true;
maxSpeed = 3;
acc = 4;
startSpeed = 8;
chargeDirection = 0;
chargeDuration = 15;
chargeDurationRandom = 10;
tellTime = 7;
image_xscale = 1;
spawnList[0] = InvertedJungleAssassin;
spawnList[1] = InvertedJungleBandit;
spawnList[2] = InvertedJungleFly;
spawnAmount[0] = 2;
spawnAmount[1] = 2;
spawnAmount[2] = 1;
activeMeleDamage = 5;
halfHealth = false;
actTime = 12;
