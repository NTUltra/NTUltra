/// @description Optimized top
var top = instance_place(x,y,Top)
if top != noone
{
	instance_destroy(top,false)
}
//This was checked constantly
if place_meeting(x,y,Floor)
	instance_destroy();
if place_meeting(x,y,Wall)
{
	instance_create(x,y,TopSmall)
	instance_create(x+16,y,TopSmall)
	instance_create(x,y+16,TopSmall)
	instance_create(x+16,y+16,TopSmall)
	instance_destroy();
}
//Collision TopSmall
//if id > other.id//said >
//instance_destroy()
alarm[1] = 3;