event_inherited();
raddrop = 70
maxhealth = 400;
scrBossHealthBuff();
EnemyHealthAdjustments();
meleedamage = 6
spr_idle_normal = sprBossHyenaIdle;
spr_idle = sprBossHyenaIdleRepresent
spr_idle_use = spr_idle_normal;
spr_walk_normal = sprBossHyenaWalk;
spr_walk = spr_walk_normal
spr_hurt_normal = sprBossHyenaHurt;
spr_hurt_leap = sprBossHyenaLeapHurt;
spr_leap = sprBossHyenaLeap;
spr_leap_start = sprBossHyenaLeapStart;
spr_leap_end = sprBossHyenaLeapEnd;
spr_hurt = spr_hurt_normal
spr_dead = sprBossHyenaDead
spr_idle_leg = sprBossHyenaIdleLeg;
spr_walk_leg = sprBossHyenaWalkLeg;
spr_hurt_leg = sprBossHyenaHurtLeg;

spr_head1_idle = sprBossHyenaHead1;
spr_head2_idle = sprBossHyenaHead2;
spr_head3_idle = sprBossHyenaHead3;
spr_head1 = spr_head1_idle;
spr_head2 = spr_head2_idle;
spr_head3 = spr_head3_idle;
spr_head1_hurt = sprBossHyenaHead1Hurt;
spr_head2_hurt = sprBossHyenaHead2Hurt;
spr_head3_hurt = sprBossHyenaHead3Hurt;
spr_head1_fire = sprBossHyenaHead1Fire;
spr_head2_fire = sprBossHyenaHead2Fire;
spr_head3_fire = sprBossHyenaHead3Fire;

projectileSpeed += 0.5;
actTime -= 2;
acc = 2;
maxSpeed = 5;
leapMaxSpeed += 2;
leapDuration += 2;