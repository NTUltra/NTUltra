/// @description Core
maxhealth = 90;
scrBossHealthBuff();
mySize = 5;
meleedamage = 0;
raddrop = 0;
spr_idle = mskFloorMiddle;
spr_walk = mskFloorMiddle;
spr_hurt = sprBigMachineCoreHurt;
spr_dead = mskPickupThroughWall;
// Inherit the parent event
event_inherited();
image_speed = 0.4;
myBody = noone;
depth -= 1;