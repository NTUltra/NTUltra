//side = choose(0,1)
depth = -8;
side=0;
alarm[0] = 90;
alarm[1] = 90;
fire = 0
instance_create(x,y,TrapScorchMark)
if !place_meeting(x,y,Wall)
instance_create(x,y,Wall);
loop=false;

if instance_exists(Player)
{
	if Player.loops>1//loop 2 yo
		loop=true;
	if Player.skill_got[29]	//Hypersomnia
	{
		alarm[0] += 90;
		scrGiveSnooze(0,0);
	}
}

