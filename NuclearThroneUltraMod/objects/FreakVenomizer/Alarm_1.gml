/// @description Check if myWall is still there
if !collision_line(x,y,x + lengthdir_x(16,image_angle + 180),y + lengthdir_y(16,image_angle + 180),WallHitMe,false,false)
{
	my_health = 0;
	with myPartner
	{
		my_health = 0;	
	}
}
alarm[1] = 5;