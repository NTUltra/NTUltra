/// @description xxx

var xx = x-(sign(hspeed)*8);
var yy = y-(sign(vspeed)*8);
instance_create(xx,yy,ToxicThrowerGas);

// Inherit the parent event
event_inherited();

if sprite_index == sprToxicBullet2
		sprite_index = sprToxicBullet2HighDmg;