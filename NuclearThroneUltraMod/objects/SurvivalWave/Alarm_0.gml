/// @description Spawner
var obj = wave[spawnI].obj;
var xx = wave[spawnI].xx;
var yy = wave[spawnI].yy;
with instance_create(xx,yy,obj)
{
	#region hypersomnia
	if instance_exists(Player) && Player.skill_got[29]//Insomnia
	{
		if Player.race = 25
		{
			if alarm[1]>0
			{
				alarm[1]+=25;
	
				with instance_create(x,y,Snooze)
				{
					owner = other.id;
					yoffset = other.sprite_height*0.5 - 4;
					depth = other.depth - 1;
				}
			}
		}
		else
		{
			if alarm[1]>0
			{
		    alarm[1]+=20;
				with instance_create(x,y,Snooze)
				{
					owner = other.id;
					yoffset = other.sprite_height*0.5 - 4;
				}
			}
		}
	}
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