/// @description xxx

// Inherit the parent event
event_inherited();

alarm[0]=5;

with instance_create(x+lengthdir_x(48,ang),y+lengthdir_y(48,ang),MeatExplosion)
scrCanHumphry();

if random(3)<1
with instance_create(x+lengthdir_x(48,ang+120),y+lengthdir_y(48,ang+120),MeatExplosion)
scrCanHumphry();

if random(3)<1
with instance_create(x+lengthdir_x(48,ang+240),y+lengthdir_y(48,ang+240),MeatExplosion)
scrCanHumphry();