/// @description Other shit

// Inherit the parent event
event_inherited();
raddrop = 50
spr_sit = sprInvertedAssassinBossSit;
spr_idle_actual = sprInvertedAssassinBossIdle;
spr_idle = spr_sit
spr_walk_actual = sprInvertedAssassinBossDash;
spr_walk = spr_sit
spr_hurt = sprInvertedAssassinBossHurt
spr_dead = sprInvertedAssassinBossDead
spr_stunned = sprInvertedAssassinBossStunned
spr_fake = sprInvertedAssassinBossDeadFake;
spr_respawn = sprInvertedAssassinBossRespawn;

smackdelayReduction += 2;
deflectRate = 1;
deflectTell = 1;
maxSpeed = 6.2
acc = 4;
shifty = 8;
smackMoveSpeed = 2;
smackRange += 3;
smackSpeed += 2;
actTime -= 1;
maxhealth = 180;

if instance_exists(PitNavigation)
{
	actTime += 4;
	smackdelayReduction -= 8;
	raddrop -= 25;
	maxhealth -= 25;
	smackRange -= 2;
}
scrBossHealthBuff();
EnemyHealthAdjustments();