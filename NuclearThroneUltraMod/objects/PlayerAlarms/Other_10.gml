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
	}
	if Player.ultra_got[96]
	{
		alarm[11] = 30;
		lightning = choose(true,false);
	}
	if Player.ultra_got[16]
	{
		//Doomed Melting
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
	if ((Player.ultra_got[59] && Player.altUltra) && !instance_exists(CorrosionDrawer))
	{
		instance_create(x,y,CorrosionDrawer)
	}
	if (Player.ultra_got[108] && !instance_exists(CorrosionDrawer))
	{
		with instance_create(x,y,CorrosionDrawer) {
			alarm[1] = 0;
			alarm[2] = 1;
			alpha = 0.5;
		}
	}
	
	if !instance_exists(PlayerAlarms3)
		instance_create(x,y,PlayerAlarms3);
	with PlayerAlarms3 {
		if scrIsCrown(36)
		{
			alarm[0] = 60;
			stabilize = 0;
		}
		if Player.skill_got[45]
		{
			alarm[0] = 60;
			alarm[1] = 20;
			enemyHealthWasChanged = false;
			playerHealthWasChanged = false;
			detectedPlayerHealth = 0;
			detectedEnemyHealth = 0;
			adrenalineAmmoTimer = adrenalineAmmoCooldown;
			adrenalineHealTimer = adrenalineHealCooldown;
		}
		if Player.skill_got[46]
		{
			alarm[0] = 60;
			enemyHealthWasChanged = false;
			playerHealthWasChanged = false;
			detectedPlayerHealth = 0;
			detectedEnemyHealth = 0;
			alarm[1] = 20;
		}
		if Player.ultra_got[59] && Player.altUltra
		{
			alarm[4] = 1;	
		}
	}
}
