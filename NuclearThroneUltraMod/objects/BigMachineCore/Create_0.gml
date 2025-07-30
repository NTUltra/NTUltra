/// @description Core
maxhealth = 90;
scrBossHealthBuff();
mySize = 5;
meleedamage = 0;
raddrop = 0;
spr_idle = mskPickupThroughWall;
spr_walk = mskPickupThroughWall;
spr_hurt = sprBigMachineCoreHurt;
spr_dead = mskPickupThroughWall;
// Inherit the parent event
event_inherited();
isBoss = true;
image_speed = 0.4;
myBody = noone;
depth -= 1;