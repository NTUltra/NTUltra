/// @description Spawner
var obj = wave[spawnI].obj;
var xx = wave[spawnI].xx;
var yy = wave[spawnI].yy;
var healthBoost = 1;
if waveNumber > 10
{
	healthBoost = 1.2;
}
with instance_create(xx,yy,obj)
{
	#region hypersomnia
	if instance_exists(Player) && Player.skill_got[29]//Insomnia
	{
		if Player.race = 25
		{
			if alarm[1]>0
			{
				alarm[1]+=20;
	
				scrGiveSnooze();
			}
		}
		else
		{
			if alarm[1]>0
			{
				alarm[1]+=15;
				scrGiveSnooze();
			}
		}
	}
	if variable_instance_exists(id,"my_health")
		my_health *= healthBoost;
	#endregion
}
spawnI ++;
if spawnI >= waveLength
{
	alarm[1] = 10;
}
else
{
	alarm[0] = wave[spawnI-1].time;
}
posI ++
if posI > posIlength
	posI = 0;