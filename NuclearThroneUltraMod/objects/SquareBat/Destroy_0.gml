
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
if point_distance(x,y,xx,yy) > 30
	instance_create(x,y,BigWallBreak);
else
	instance_create(x,y,WallBreak);

event_inherited();
if place_meeting(x,y,Floor) || place_meeting(x,y,FloorExplo)
{
	scrDrop(20,0)
}
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
