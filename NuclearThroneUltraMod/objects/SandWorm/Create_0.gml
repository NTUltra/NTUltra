raddrop = 50
maxhealth = 300
meleedamage = 20
mySize = 3

event_inherited()

alarm[10] = 0;//Can be on no floor
snd_hurt = sndBigMaggotHit
snd_dead = sndBigMaggotDie
snd_melee = sndBigMaggotBite;
mask_index = mskPickupThroughWall;
walk = 0
xOffset = 12;
yOffset = 42;
alarm[1] = 300;
alarm[5] = 30;
hasStarted = false;

//Alteration


spr_idle_actual = sprSandWorm;
spr_idle = spr_idle_actual
spr_walk = spr_idle_actual
spr_hurt_actual = sprSandWormHurt;
spr_hurt = spr_hurt_actual
spr_dead = sprSandWormDead
spr_fire = sprSandWormAppear;
spr_fire_simple = sprSandWormFire;
spr_appear = sprSandWormAppear;
spr_disappear_start = sprSandWomDisappearStart;
spr_disappear_end = sprSandWomDisappearEnd;
spr_disappear_loop = sprSandWormDisappear
spr_disappear_hurt = sprSandWormDisappearHurt;
spr_turn_around = sprSandWormTurnAround;
actTime = 11;
dissapearAttackAngle = 0;
disappearAttackAmount = 8;
dissapearAttackAngleStep = 45;// 360 / 8
disappearAttackProjectileSpeed = 7;
acc = 0.7;
maxSpeed = 2.5;
spr_fire = spr_disappear_end;
sprite_index = spr_disappear_end;
image_index = image_number - 2;
image_speed = 0;