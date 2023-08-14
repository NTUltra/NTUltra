/// @description Also frost shot

// Inherit the parent event
event_inherited();

with instance_create(x,y,FreezeBullet)
{motion_add(other.image_angle,16)
image_angle = direction
team = other.team}