/// @description Crown of Frog spawn Big bandit
if !instance_exists(GenCont) && !instance_exists(LevCont) && !instance_exists(SpiralCont) && instance_exists(Player) && Player.area == 2
{
	with instance_nearest(x,y,Wall)
	{
		instance_create(x,y,WallBreak);
		with instance_create(x,y,PortalEnviromentReplacer)
		{
			area = 1;
			prevArea = 2;
		}
		instance_create(x,y,BanditBoss);
	}
	alarm[8] = 15;
}
else
{
	alarm[3] = 90;	
}