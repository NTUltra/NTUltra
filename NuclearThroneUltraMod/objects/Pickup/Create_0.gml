/// @description Init
depth = -2;
hasPluto = false;
suckDirection = 0;
suckOffset = 0;
col = make_colour_rgb(190,255,8);
defaultRange = 42;//38
if instance_exists(Player)
{
	if Player.skill_got[3]
	{
		hasPluto = true;
		alarm[6] = 1;	
	}
	if Player.loops > 1
	{
		defaultRange -= 4;	
	}
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
	
var w = instance_position(x,y,Wall);
if w != noone && w.object_index != WallHitMe
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
if instance_exists(PlagueBringer)
{
	alarm[5] = 1;	
}