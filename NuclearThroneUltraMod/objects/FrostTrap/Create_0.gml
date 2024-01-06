side = choose(0,1)
depth = -8;
alarm[0] = 100+random(40)
fire = 0
myscorch = instance_create(x,y,TrapScorchMark)

loop=false;

if instance_exists(Player)
{
	if Player.loops>1//loop 2 yo
		loop=true;
	if Player.skill_got[29]	//Hypersomnia
	{
		alarm[0] += 70;
		scrGiveSnooze(0,0);
	}
}

alarm[1] = 1;
alarm[2] = 3;