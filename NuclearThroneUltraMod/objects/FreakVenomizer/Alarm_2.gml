/// @description Spawn a partner
var maxDis = 500;
var hit = collision_line_point(x + lengthdir_x(4,image_angle),y + lengthdir_y(4,image_angle),
x + lengthdir_x(maxDis,image_angle),y + lengthdir_y(maxDis,image_angle),WallHitMe,false,false)
if hit[0] != noone
{
	myPartner = instance_create(hit[1],hit[2],FreakVenomizer);
	lineScale = point_distance(x,y,hit[1],hit[2]);
	with instance_create(x,y,AnimDestroy)
	{
		sprite_index = sprPopoFreakVenomizerLineSpawn;
		image_angle = other.image_angle;
		image_xscale = other.lineScale;
	}
	with myPartner {
		image_angle = other.image_angle + 180;
		alarm[2] = 0;
		alarm[3] = 0;
		isHost = false;
	}
}
else
{
	my_health = 0;	
}