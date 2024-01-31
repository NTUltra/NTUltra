if (alarm[7] > 0)
	with other
	{
	instance_destroy()
	with instance_create(x,y,FloorExplo)
		alarm[3] = 0;
	}
else
{
	move_bounce_solid(false);	
}

BackCont.shake += 0.8;

