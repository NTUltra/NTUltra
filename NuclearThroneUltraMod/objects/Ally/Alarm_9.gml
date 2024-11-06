/// @description Show that I am dying
alarm[9] = 8;
if my_health < 9 + healthScale
{
	var mySmoke = instance_create(x,y,Smoke);
	if my_health < 4 + healthScale
	{
		alarm[9] = 1;
		with mySmoke
		{
			speed += 1;	
		}
	}
	else if my_health < 6 + healthScale
	{
		alarm[9] = 5;
	}
}