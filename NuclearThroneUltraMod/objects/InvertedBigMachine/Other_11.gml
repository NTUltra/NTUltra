/// @description Setup
instance_create(x+64,y+32,InvertedBigMachineTurret);

with instance_create(x-64,y+32,InvertedBigMachineTurret)
{
	alarm[1] += 5;	
}
if instance_exists(Player)
{
	if loops>0
	{//LOOP
	with instance_create(x-32,y+32,InvertedBigMachineTurret)
	{
		alarm[1] += 10;
	}

	with instance_create(x+32,y+32,InvertedBigMachineTurret)
	{
		alarm[1] += 15;
	}


	}

	if loops>3
	{//LOOP
	with instance_create(x-16,y-16,InvertedBigMachineTurret)
	{
		alarm[1] += 20;
	}

	with instance_create(x+16,y-16,InvertedBigMachineTurret)
	{
		alarm[1] += 25;	
	}

	}
	if !instance_exists(SurvivalWave)
	{
		with Player {
			x = other.x - 32;
			y = other.y + 128;
			scrForcePosition60fps();
		}
	}
}