/// @description Init
maxhealth = 700;
scrBossHealthBuff();
disable = false;
size = 8;
meleedamage = 0;
raddrop = 0;
// Inherit the parent event
event_inherited();
isInverted = false;
alarm[1] = 0;
alarm[10] = 0;
spr_idle = sprNothingLeft;
spr_hurt = sprNothingLeftHurt;
snd_hurt = sndNothingHurtHigh;
spr_leg = sprNothingLeg;
spr_left_deactivated = sprNothingLeftDeactivated;
spr_left_deactivated_hurt = sprNothingLeftDeactivatedHurt;
spr_left_hurt = sprNothingLeftHurt;
spr_left_hurt_link = sprNothingLeftHurtLink;
spr_left_deactivated_hurt_link = sprNothingLeftDeactivatedHurtLink;
spr_right_deactivated = sprNothingRightDeactivated;
spr_right_deactivated_hurt = sprNothingRightDeactivatedHurt;
spr_right_hurt = sprNothingRightHurt;
spr_right_hurt_link = sprNothingRightHurtLink;
spr_right_deactivated_hurt_link = sprNothingRightDeactivatedHurtLink;

owner = -1;
xOffset = 0;
isLeft = true;
target = -1;

walk = 0;
spriteXscale = 1;
legXoffset = 0;
projectileSpeed = 6;
firerate = 7;
firerate -= (min(GetPlayerLoops(),5)*0.5);
maxAmmo = 8
ammo = maxAmmo;
//left side
gunangle[0] = 270;
gunangle[1] = 300;
gunangle[2] = 330;
angleI = 0;//random(array_length(gunangle)-1);
badboyBuff = 1;
loops = GetPlayerLoops()
tookDamageThisFrame = false;
