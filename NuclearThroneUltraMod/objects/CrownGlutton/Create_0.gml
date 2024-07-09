event_inherited();
crowns = [];
raddrop = 40
maxhealth = 550
scrBossHealthBuff();
EnemyHealthAdjustments();
alarm[10] = 0;

spr_idle = sprCrownGluttonBossIdle
spr_walk = sprCrownGluttonBossIdle
spr_hurt = sprCrownGluttonBossHurt
spr_dead = sprCrownGluttonBossDead
spr_fire = sprCrownGluttonBossFire


//behavior
alarm[1] = 60;

actTime = 19;
chance = 10;
acc = 2;
maxSpeed = 3;
speedBuff = 3;
projectileSpeed = 2;

instance_create(x,y,BigWallBreak);
alarm[2] = 3;
alarm[3] = 2;
alarm[5] = 5;
scrAddDrops(1);
if instance_exists(Player) && Player.skill_got[29] {
	alarm[1] += 50;
	alarm[2] += 50;
	alarm[5] += 50;
	scrGiveSnooze();
}
reachedHalfway = false;
reached75 = false;
crowns = [EnemyCrownOfBlood,EnemyCrownOfEnergy,EnemyCrownOfSpeed,EnemyCrownOfLife,EnemyCrownOfPopo,EnemyCrownOfCurses,EnemyCrownOfBlindness];