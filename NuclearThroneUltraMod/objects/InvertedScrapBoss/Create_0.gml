/// @description Alterations







// Inherit the parent event
event_inherited();
raddrop = 100
maxhealth = 450
loops = GetPlayerLoops()
if GetPlayerLoops() > 0
	maxhealth = 650;
maxhealth += clamp(20*loops,0,200);
scrBossHealthBuff();
EnemyHealthAdjustments();
spr_idle = sprInvertedScrapBossIdle
spr_walk = sprInvertedScrapBossWalk
spr_hurt = sprInvertedScrapBossHurt
spr_dead = sprInvertedScrapBossDead
spr_fire = sprInvertedScrapBossFire
spr_intro = sprInvertedScrapBossIntro;
spr_actual_idle = spr_idle;
spr_actual_hurt = spr_hurt;
spr_stop = sprInvertedScrapBossStop;
spr_charge = sprInvertedScrapBossCharge;
projectileSpeed += 0.25;
actTime -= 3;
maxSpinSpeed += 0.2;
fireRate -= 1;