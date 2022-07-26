/// @description Constant gass burps
alarm[4] = 5;
scrTarget();

if (target > 0 && collision_line(x,y,target.x,target.y,Wall,0,0) < 0 &&
point_distance(x,y,target.x,target.y) < 100)
{
	snd_play(sndToxicBoltGas,0.1);
	var am = 6;
	var angStep = 360/am;
	var gs = 0.5;
	var dgs = 2;
	var ang = point_direction(x,y,target.x,target.y);
	repeat(3)
	with instance_create(x,y,ToxicGas)
	{
		depth = other.depth+1;
		motion_add(ang+random_range(-30,30),dgs);	
	}
	
	repeat(am)
	{
		with instance_create(x,y,ToxicGas)
		{
			depth = other.depth+1;
			motion_add(angStep,gs);	
		}
		ang += angStep;
	}
}