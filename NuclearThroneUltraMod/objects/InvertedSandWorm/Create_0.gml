/// @description Invurrrtut
// Inherit the parent event
event_inherited();
maxhealth = 770;
raddrop = 54;
scrBossHealthBuff();
EnemyHealthAdjustments();

//Alteration
spr_idle_actual = sprInvertedSandWorm;
spr_idle = spr_idle_actual
spr_walk = spr_idle_actual
spr_hurt_actual = sprInvertedSandWormHurt;
spr_hurt = spr_hurt_actual
spr_dead = sprInvertedSandWormDead
spr_fire = sprInvertedSandWormAppear;
spr_fire_simple = sprInvertedSandWormFire;
spr_appear = sprInvertedSandWormAppear;
spr_disappear_start = sprInvertedSandWormDisappearStart;
spr_disappear_end = sprInvertedSandWormDisappearEnd;
spr_disappear_loop = sprInvertedSandWormDisappear
spr_disappear_hurt = sprInvertedSandWormDisappearHurt;
spr_turn_around = sprInvertedSandWormTurnAround;
actTime = 6;
dissapearAttackAngle = 0;
disappearAttackAmount = 8;
dissapearAttackAngleStep = 45;// 360 / 8
disappearAttackProjectileSpeed = 8;
acc = 1;
maxSpeed = 3;
spr_fire = spr_disappear_end;
sprite_index = spr_disappear_end;
image_index = image_number - 2;
image_speed = 0;
disappearAttackAmount += 1;
angPart = 0.33333333;
fireDelay = 4;
disappearDuration = 35;
angPart = 0.5;
myMaggot = MaggotInverted;
amountOfMaggots += 1;