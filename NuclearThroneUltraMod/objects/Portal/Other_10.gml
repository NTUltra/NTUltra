/// @description Not on interactables
var n = instance_nearest(x,y,Interactable);
if n != noone && point_distance(x,y,n.x,n.y) < 96
{
	var w = instance_nearest(x,y,WallHitMe);
	if w != noone
	{
		x = w.x + 8;
		y = w.y + 8;
		scrForcePosition60fps();
	}
}
var n = instance_nearest(x,y,InteractableProp);
if n != noone && point_distance(x,y,n.x,n.y) < 96
{
	var w = instance_nearest(x,y,WallHitMe);
	if w != noone
	{
		x = w.x + 8;
		y = w.y + 8;
	}
	scrForcePosition60fps();
}
var n = instance_nearest_notme(x,y,Portal);
if n != noone && point_distance(x,y,n.x,n.y) < 96
{
	var w = instance_nearest(x,y,WallHitMe);
	if w != noone
	{
		x = w.x + 8;
		y = w.y + 8;
	}
	scrForcePosition60fps();
}