/// @description Crown of Frog spawn Big bandit
if !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(SpiralCont) && instance_exists(Player) && Player.area == 2
{
	with instance_nearest(x,y,Wall)
	{
		instance_create(x,y,WallBreak);
		instance_create(x,y,BanditBoss);
	}
}
else
{
	alarm[3] = 90;	
}