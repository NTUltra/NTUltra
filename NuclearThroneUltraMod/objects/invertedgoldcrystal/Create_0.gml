/// @description Init

// Inherit the parent event
event_inherited();
alarm[0] = 0;
meleedamage = 40
raddrop = 50
maxhealth = 160//65
EnemyHealthAdjustments();
spr_idle = sprInvertedGoldCrystalIdle
spr_walk = sprInvertedGoldCrystalIdle
spr_hurt = sprInvertedGoldCrystalHurt
spr_dead = sprInvertedGoldCrystalDead
spr_fire = sprInvertedGoldCrystalFire

snd_hurt = sndGoldCrystalHit

tellTime -= 10;
maxAmmo = 5;