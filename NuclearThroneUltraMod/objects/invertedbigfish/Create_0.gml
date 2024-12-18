/// @description Init

// Inherit the parent event
event_inherited();
raddrop = 60;
maxhealth = 195;//210
meleedamage = 4
mySize = 3
if loops > 0{
	maxhealth = 250//370;
}
scrBossHealthBuff();
healAmount = 11;
EnemyHealthAdjustments()
inverted = true;
actTime -= 2;
suckRange = 160;
maxSpeed = 3;//2
suckTime = 50;
fishFireRate = 4;
originalMaxspeed = maxSpeed;
chargeSpeed = 6;//7
chargeDis = 80;
chargeTell = 20;
if loops > 0
{
	fishFireRate = 2;
	suckRange += 20;
	maxSpeed += 0.5;
	chargeSpeed += 1;
	chargeDis += 10;
	chargeTell -= 2;
}
if loops > 1
{
	chargeSpeed += 1;
	chargeDis += 10;
	chargeTell -= 2;
}	
suckAcc = 0.098;
spr_idle = sprInvertedOasisBossIdle
spr_walk = sprInvertedOasisBossWalk
spr_hurt = sprInvertedOasisBossHurt
spr_dead = sprInvertedOasisBossDead
spr_fire = sprInvertedOasisBossFire
spr_startfire = sprInvertedOasisBossFireStart
spr_endfire = sprInvertedOasisBossFireEnd
