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
	if isDoc
	{
		var n = instance_nearest(x,y,enemy)
		if n != noone && n.team != 2
		{
			var td = point_direction(x,y,n.x,n.y);
			if abs(angle_difference(direction,td)) < 12
			{
				direction = td;
			}
		}
	}
	with instance_create(x,y,ToxicConvertedBullet) {
		dmg = other.dmg;
		direction = other.direction;
		image_angle = direction;
		speed = 16;
		team = 2;
	}
	instance_destroy();
}
alarm[3] = 1;