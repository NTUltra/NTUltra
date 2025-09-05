/// @description Mood swing
var n = instance_nearest(x,y,Wall);
if n != noone && point_distance(n.x+8,n.y+8,x,y) < 24
{
	if collision_line(x,y,x + 32,y,Wall,false,false) || collision_line(x,y,x - 32,y,Wall,false,false)
	{
		hspeed *= -1;
	}
	if collision_line(x,y,x,y + 32,Wall,false,false) || collision_line(x,y,x,y - 32,Wall,false,false)
	{
		vspeed *= -1;
	}
	scrMoodSwingToxicBullet(x,y,dmg);
	instance_destroy();
}
alarm[3] = 1;