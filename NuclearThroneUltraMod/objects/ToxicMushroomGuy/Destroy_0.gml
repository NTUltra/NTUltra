event_inherited()
if object_index == ToxicMushroomGuy
{
	scrDrop(8,5)
	repeat(3)
	instance_create(x,y,ToxicGas)
	snd_play(sndToxicBarrelGas,0.1,true);
	var dir = 0;
	var randir = 1;
	var bspd = 2;
	var spd = bspd;
	var acc = 0.3;
	var am = 8;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir); 
			speed = spd;	
		}
		spd += acc;
	}
	dir = 90;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;
		}
		spd += acc;
	}
	dir = 180;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;	
		}
		spd += acc;
	}
	dir = 270;
	spd = bspd;
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			direction = dir + random_range(randir,-randir);
			speed = spd;
		}
		spd += acc;
	}
}