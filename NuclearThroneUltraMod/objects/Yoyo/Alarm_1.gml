instance_create(x,y,DiscTrail);
alarm[1] = 1;


dist += 1
var dis = 18;
var stopper = 1.2;

if instance_exists(Player) and instance_exists(enemy)
{
	var homePower = 1;
	if Player.skill_got[21]
	{
		homePower += 0.5;
		stopper += 1;
		dis += 39 + Player.betterboltmarrow;
	}
	dir = instance_nearest(x,y,enemy)
	if dir != noone && instance_exists(dir) && dir.team != team && speed > 0 and point_distance(x,y,dir.x,dir.y) < dis
	{
		var dir = point_direction(x,y,dir.x,dir.y);
		x += lengthdir_x(homePower + speed*0.5,dir)
		y += lengthdir_y(homePower + speed*0.5,dir)
	}
}

if dist > distrange
{
	friction = 0.2;
	if instance_exists(Player)
	{//return to player
		motion_add(point_direction(x,y,Player.x,Player.y),0.8);
		if point_distance(x,y,Player.x,Player.y) < 10
		{
			instance_destroy();
			instance_create(x,y,DiscDisappear)
		}
	}
	
	if speed < stopper
	{
		alarm[1] = 2;
	}	
}

image_angle += 20;
