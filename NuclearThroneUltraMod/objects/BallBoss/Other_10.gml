/// @description Offscreen bullets
snd_play(sndSuperSlugger);
var l = 250;
if diag || reachHalfHealth
{
	var xx = x + lengthdir_x(l,45);
	var yy = y + lengthdir_y(l,45);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,135);
	yy = y + lengthdir_y(l,135);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,225);
	yy = y + lengthdir_y(l,225);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,315);
	yy = y + lengthdir_y(l,315);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
}
if !diag || reachHalfHealth
{
	var xx = x + lengthdir_x(l,0);
	var yy = y + lengthdir_y(l,0);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,90);
	yy = y + lengthdir_y(l,90);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,180);
	yy = y + lengthdir_y(l,180);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
	xx = x + lengthdir_x(l,270);
	yy = y + lengthdir_y(l,270);
	with instance_create(xx,yy,EnemyBullet1Square)
	{
		motion_add(point_direction(x,y,other.x,other.y),other.pSpeed)
		image_angle = direction
		team = other.team
	}
}
diag = !diag;
scrDrop(25,0);
