/// @description (re)-Init
if !instance_exists(StartDaily)
	alarm[0] = checkDelay;
if !instance_exists(SecretFinder)
	instance_create(x,y,SecretFinder);
if instance_exists(Player)
{
	with Player {
		if ultra_got[30] && altUltra
		{
			alarm[11] = 60;	
		}
		if false && skill_got[44] && !instance_exists(CrescentMoon){
			instance_create(x,y,CrescentMoon);
			with instance_create(x,y,CrescentMoon)
			{
				type = 1;	
			}
		}
	}
	if Player.ultra_got[96]
	{
		alarm[11] = 30;
		lightning = choose(true,false);
	}
	if Player.ultra_got[16]
	{
		//Doomed Melting
		with Player
		{
			meltingd = lastEnemyKilled;	
		}
		alarm[10] = 10;
	}
	if Player.skill_got[22] == 1 //STRESS
		alarm[2] = stressLowCheck;
	if Player.ultra_got[26] //GET LOADED
		alarm[3] = 60;
	if Player.race == 26 || Player.copyPassive == 26//HUMPHRY
	{
		humphryDelay = 7;
		humphryAmount = 0.94;
		humphryConstantAmount = 1;
		if Player.loops > 0
			humphryDelay --;
		if Player.skill_got[5]
		{
			humphryAmount = 0.95;
			humphryConstantAmount = 0;
			humphryDelay += 2;
		}
		alarm[6] = 60;
	}
	if scrIsCrown(25)
	{
		alarm[4] = 30;
	}
	if scrIsCrown(19)
	{
		alarm[1] = 30;	
	}
	if instance_exists(ThroneIISpiral)//Crown of freedom
	{
		alarm[4] = 30;
	}
	else if scrIsCrown(26)
	{
		alarm[5] = 120;	
	}
	if !instance_exists(PlayerAlarms2)
		instance_create(x,y,PlayerAlarms2);
	
	with PlayerAlarms2 {
		if Player.skill_got[29]//insomnia
		{
			var t = 185;
			if Player.race = 25
			{
				t = 225;
			}
			alarm[1] = t;
		}
		//Nothing yet may need more alarms
		if Player.altUltra && Player.ultra_got[33] && Player.phoenixrevives > 2
		{
			alarm[2] = 1;
		}
		if Player.ultra_got[11]
		{
			alarm[4] = 90;
			alarm[5] = 2;
		}
		if Player.ultra_got[71]
		{
			alarm[8] = 1;
		}
		//Elementor frost ultra
		if Player.ultra_got[94]
		{
			alarm[11] = 5;	
		}
		///Elementor fire ultra
		if Player.ultra_got[95]
		{
			alarm[9] = 2;
			alarm[10] = 10;
		}
	}
	if (((Player.ultra_got[59] && Player.altUltra) || Player.ultra_got[108]) && !instance_exists(CorrosionDrawer))
	{
		instance_create(x,y,CorrosionDrawer)
	}
}
