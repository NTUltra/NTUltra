
var n = instance_nearest(x,y,Floor);
var xx = n.x
var yy = n.y;
if n.object_index == FloorExplo
{
	xx += 8;
	yy += 8;
}
else
{
	xx += 16;
	yy += 16;
}
var dir = point_direction(x,y,xx,yy);
if point_distance(x,y,xx,yy) > 28
	instance_create(x+lengthdir_x(10,dir),y+lengthdir_y(10,dir),BigWallBreakWallOnly);
else
	instance_create(x+lengthdir_x(6,dir),y+lengthdir_y(6,dir),WallBreakWallOnly);

event_inherited();
if place_meeting(x,y,Floor) || place_meeting(x,y,FloorExplo)
{
	scrDrop(13,0)
}
if !sleeping
{
	snd_play(sndExplosionL);
	if isInverted
	{
		with instance_create(x,y,PurpleExplosion)
			team = other.team;
	}
	else
	{
		instance_create(x,y,GreenExplosion);
	}
}
