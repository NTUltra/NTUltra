event_inherited();
raddrop = 70
maxhealth = 380;
scrBossHealthBuff();
EnemyHealthAdjustments();
meleedamage = 6
spr_idle_normal = sprInvertedBossHyenaIdle;
spr_idle = sprInvertedBossHyenaIdleRepresent
spr_idle_use = spr_idle_normal;
spr_walk_normal = sprInvertedBossHyenaWalk;
spr_walk = spr_walk_normal
spr_hurt_normal = sprInvertedBossHyenaHurt;
spr_hurt_leap = sprInvertedBossHyenaLeapHurt;
spr_leap = sprInvertedBossHyenaLeap;
spr_leap_start = sprInvertedBossHyenaLeapStart;
spr_leap_end = sprInvertedBossHyenaLeapEnd;
spr_hurt = spr_hurt_normal
spr_dead = sprInvertedBossHyenaDead
spr_idle_leg = sprInvertedBossHyenaIdleLeg;
spr_walk_leg = sprInvertedBossHyenaWalkLeg;
spr_hurt_leg = sprInvertedBossHyenaHurtLeg;

spr_head1_idle = sprInvertedBossHyenaHead1;
spr_head2_idle = sprInvertedBossHyenaHead2;
spr_head3_idle = sprInvertedBossHyenaHead3;
spr_head1 = spr_head1_idle;
spr_head2 = spr_head2_idle;
spr_head3 = spr_head3_idle;
spr_head1_hurt = sprInvertedBossHyenaHead1Hurt;
spr_head2_hurt = sprInvertedBossHyenaHead2Hurt;
spr_head3_hurt = sprInvertedBossHyenaHead3Hurt;
spr_head1_fire = sprInvertedBossHyenaHead1Fire;
spr_head2_fire = sprInvertedBossHyenaHead2Fire;
spr_head3_fire = sprInvertedBossHyenaHead3Fire;

projectileSpeed += 0.25;
actTime -= 2;
acc = 2;
maxSpeed = 5;
leapMaxSpeed += 2;
leapDuration += 2;
isInverted = true;