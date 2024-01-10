/// @description Ultramod

// Inherit the parent event
event_inherited();
with instance_create(x,y,EnergySwordBullet)
{motion_add(other.direction,16)
image_angle = direction
team = other.team}