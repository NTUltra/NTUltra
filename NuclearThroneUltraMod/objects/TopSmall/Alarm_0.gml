/// @description Optimized top
var top = instance_place(x,y,TopSmall)
if top != noone
{
	instance_destroy(top,false)
}
//This was checked constantly
if place_meeting(x,y,Floor)
	instance_destroy();
if place_meeting(x,y,Wall)
	instance_destroy();
//Collision TopSmall
//if id > other.id//said >
//instance_destroy()
alarm[0] = 3;