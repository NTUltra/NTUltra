/// @description Attach to a wall
var xx = x;
var yy = y;
var maxDis = 16;
do {
	xx += lengthdir_x(1,direction);	
	yy += lengthdir_y(1,direction);
	maxDis -= 1;
} until (collision_point(xx,yy,WallHitMe,false,false) || maxDis < 0)
with instance_create(xx,yy,FreakVenomizer)
{
	image_angle = other.direction + 180;
}
instance_destroy();
/*
var l = 14;
if collision_line(x,y,x + l,y,WallHitMe,false,false) && !collision_line(x,y,x - l,y,WallHitMe,false,false)
{
	//LEFT
	var xx = x;
	var maxDis = 12;
	do {
		xx += 1;
		maxDis -= 12;
	} until (maxDis < 0 || collision_point(xx,y,WallHitMe,false,false))
	with instance_create(xx,y,FreakVenomizer)
	{
	}
}
else if collision_line(x,y,x - l,y,WallHitMe,false,false) && !collision_line(x,y,x + l,y,WallHitMe,false,false)
{
	//RIGHT
	var xx = x;
	var maxDis = 12;
	do {
		xx -= 1;
		maxDis -= 12;
	} until (maxDis < 0 || collision_point(xx,y,WallHitMe,false,false))
	with instance_create(xx,y,FreakVenomizer)
	{
		image_angle = 180;
	}
}
else if collision_line(x,y,x,y - l,WallHitMe,false,false) && !collision_line(x,y,x,y + l,WallHitMe,false,false)
{
	//TOP
	var yy = y;
	var maxDis = 12;
	do {
		yy -= 1;
		maxDis -= 12;
	} until (maxDis < 0 || collision_point(x,yy,WallHitMe,false,false))
	with instance_create(x,y,FreakVenomizer)
	{
		image_angle = 90;
	}
}
else if collision_line(x,y,x,y + l,WallHitMe,false,false) && !collision_line(x,y,x,y - l,WallHitMe,false,false)
{
	//BOTTOM
	var yy = y;
	var maxDis = 12;
	do {
		yy += 1;
		maxDis -= 12;
	} until (maxDis < 0 || collision_point(x,yy,WallHitMe,false,false))
	with instance_create(x,y,FreakVenomizer)
	{
		image_angle = 270;
	}
}
instance_destroy();