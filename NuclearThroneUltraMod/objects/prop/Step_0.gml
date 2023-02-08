/// @description Overlap
var overlap = instance_place(x,y,chestprop);
if overlap != noone
{
	var getmeout = point_direction(overlap.x,overlap.y,x,y);
	motion_add(getmeout,0.8)
	direction += 1;
}
var overlap = instance_place(x,y,prop);
if overlap != noone
{
	var getmeout = point_direction(overlap.x,overlap.y,x,y);
	motion_add(getmeout,0.6)
	direction += 1;
}