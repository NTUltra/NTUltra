/// @description Gonna bea  big boy and instahitscan
image_angle = scrAimAssistLaser(image_angle);
direction = image_angle;
endX = x;
endY = y;
if !instance_exists(Wall)
{
	image_xscale = 400;
}
else
{
	while collision_point(x,y,Floor,false,false) || collision_point(x,y,Wall,false,false) || collision_point(x,y,Top,false,false)
	{
		x += lengthdir_x(1,image_angle+180);
		y += lengthdir_y(1,image_angle+180);
	}
	while collision_point(endX,endY,Floor,false,false) || collision_point(endX,endY,Wall,false,false) || collision_point(endX,endY,Top,false,false)
	{
		endX += lengthdir_x(1,image_angle);
		endY += lengthdir_y(1,image_angle);
	}
	image_xscale = point_distance(x,y,endX,endY);
}
//And done