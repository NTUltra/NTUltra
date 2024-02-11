/// @description Init
depth = -2;
hasPluto = false;
suckDirection = 0;
col = make_colour_rgb(190,255,8);
if instance_exists(Player)
if Player.skill_got[3]
	{
		hasPluto = true;
		alarm[2] = 1;	
	}
	isGettingSucked = false;
xOrigin = x;
yOrigin = y;
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
		y = n.y+o;
		scrForcePosition60fps();
	}
}