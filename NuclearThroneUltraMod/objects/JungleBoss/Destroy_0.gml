scrDrop(100,50)
scrDrop(10,0)
event_inherited();
scrDefeatedRequiredBoss(secretChallengeBosses.bigVulture);
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
instance_create(x,y,PinkSheep);
