/// @description Out of playarea?
alarm[1] = 10;
if !collision_point(x,y,Floor,false,false)
{
	my_health = 0;	
}