/// @description Dont move
var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	var getmeout = point_direction(overlap.x,overlap.y,x,y);
	motion_add(getmeout,mySize)
	direction += 1;
}