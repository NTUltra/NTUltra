/// @description Init
depth = -2;
if instance_exists(Player)
if Player.skill_got[3]
	{
		alarm[2] = 2;	
	}
	isGettingSucked = false;
	
cursed = false;
mySize = 1;
stepDis = 12;
spr_hurt = false;
if UberCont.normalGameSpeed == 60
	stepDis = 6;
	
if collision_point(x,y,Wall,false,false)
{
	var n = instance_nearest(x,y,Floor)
	if n != noone
	{
		var o = 16;
		if n.object_index == FloorExplo
			o = 8;
		x = n.x+o;
		y = n.y+0;
		scrForcePosition60fps();
	}
}