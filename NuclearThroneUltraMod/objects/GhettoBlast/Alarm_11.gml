/// @description xxx

// Inherit the parent event
event_inherited();
with instance_create(x,y,EnergySwordBullet)
{motion_add(aimDirection+(random(4)-2)*other.accuracy,16)
image_angle = direction
dmg ++;
team = other.team}