/// @description Also explode

// Inherit the parent event
event_inherited();
var xx = x + lengthdir_x(48,image_angle-20);
var yy = y + lengthdir_y(48,image_angle+20);
instance_create(xx,yy,Explosion);
var xx = x + lengthdir_x(48,image_angle+20);
var yy = y + lengthdir_y(48,image_angle+20);
instance_create(xx,yy,Explosion);