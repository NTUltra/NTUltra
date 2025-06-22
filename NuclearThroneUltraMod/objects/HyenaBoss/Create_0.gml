raddrop = 50
maxhealth = 430
mySize = 4
event_inherited()
scrBossHealthBuff();
meleedamage = 5
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

head1x = 29;
head1y = -17;
head2x = 32;
head2y = -4;
head3x = 32;
head3y = 7;

headGun1x = 32;
headGun1y = -32;
headGun2x = 60;
headGun2y = -4;
headGun3x = 60;
headGun3y = 14;

snd_hurt = sndHyenaHurt
snd_dead = sndHyenaDeath
snd_melee = sndHyenaMelee

//behavior
walk = 0
gunangle = 0;
if right != 1
	gunangle = 180;
head1aim = gunangle;
head2aim = gunangle;
head3aim = gunangle;
head1lerp = 0.1;
head2lerp = 0.2;
head3lerp = 0.05;
head1Max = 32;
head2Max = 26;
head3Max = 20;
head1Animation = 0;
head2Animation = 0;
head3Animation = 0;
alarm[1] = 10;
firstTime = true;
wkick = 0
actTime = 9;

acc = 1;
maxSpeed = 3.5;
leapMaxSpeed = 11.5;
leapDuration = 17;
leapBackupDuration = 20;
leapLongDuration = 30;
leapAcc = 4.25;
leapDirection = direction;
immuneHealth = my_health;
forceAnimation = 0;
projectileSpeed = 6.5;
isInverted = false;