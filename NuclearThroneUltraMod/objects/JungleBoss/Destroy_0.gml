scrDrop(100,100)
scrDrop(0,50)
event_inherited();
scrBossKill();
if UberCont.area == 114 || UberCont.area == 123
	scrDefeatedRequiredBoss(secretChallengeBosses.bushBox);
scrEndBossMusic();
repeat(30)
{
	var dir = random(360);
	var dis = random_range(10,32);
	var xx = x+lengthdir_x(dis,dir);
	var yy = y+lengthdir_y(dis,dir);
	with instance_create(xx,yy,Leaf)
		depth = other.depth;
}
event_user(0);
event_user(0);
if !instance_exists(SurvivalWave) && !instance_exists(InvaderBossSpawnPortal) && instance_number(JungleBoss) == 1 && UberCont.area != 7 && UberCont.area != 108
	with instance_create(x,y,PinkSheep)
	{
		alarm[0] = 0;
	}
