alarm[0] = 100+random(40)
fire = 0
instance_create(x,y,TrapScorchMark)

loop=true;

alarm[1] = 1;
alarm[2] = 3;

if instance_exists(Player)
{
	if Player.skill_got[29]	//Hypersomnia
	{
		alarm[0] += 70;
		scrGiveSnooze(0,0);
	}
}