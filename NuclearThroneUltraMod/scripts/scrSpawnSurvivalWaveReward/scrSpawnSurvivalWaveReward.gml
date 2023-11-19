///scrSpawnSurvivalWaveReward();
// /@description
///@param
function scrSpawnSurvivalWaveReward(){
	var wave = Player.subarea;
	
	//Default chestspawn:
	if wave > 0
	{
		instance_create(x,y-64,WeaponChest);
		instance_create(x,y+64,RadChest);
		instance_create(x-64,y,AmmoChest);
		if Player.skill_got[23]//OPEN MIND IN SURVIVAL ARENA
		{
			instance_create(x+64,y,WeaponChest);
			instance_create(x+70,y+64,AmmoChest);
			instance_create(x+70,y-64,RadChest);
		}
		//HEALTH CHEST
		var healthChestGol = 0;
		if Player.race=4 && Player.my_health <= Player.maxhealth*0.5 and ran < 5
		{
			healthChestGol += 1;
		}
		else if Player.race!=4 && Player.my_health < round(6/2) and ran < 5
		{
			healthChestGol += 1;
		}
		if (instance_exists(Player) && Player.my_health < ceil(Player.maxhealth*0.8))
			healthChestGol = choose(0,0,0,0,0,0,0,0,0,1);
		else
			healthChestGol = 0;
		if Player.my_health >= Player.maxhealth
			healthChestGol --;
		if Player.my_health >= 30
			healthChestGol --;
		var xx = x+60;
		var yy = y + 64;
		repeat(healthChestGol)
		{
			instance_create(xx,yy,HealthChest);
			yy -= 16;
		}
	}
	
	switch (wave)
	{
		case 1:
			instance_create(x,y+96,EliteWeaponChest);
		break;
		case 2:
			instance_create(x,y+96,EliteWeaponChest);
		break;
		case 4:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 6:
			if Player.skill_got[30]
			{
				with instance_create(x+64,y+96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y+96,WeaponMod);
			
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 9:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 10:
			if Player.level > 1
				instance_create(x,y+96,RerollStation);
		break;
		case 11:
			if Player.skill_got[30]
			{
				with instance_create(x+64,y+96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y+96,WeaponMod);
			
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 12:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 14:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 16:
			if Player.skill_got[30]
			{
				with instance_create(x+64,y+96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y+96,WeaponMod);
			
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 17:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		
		case 19:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
		case 20:
			if Player.level > 1
				instance_create(x,y+96,RerollStation);
			if Player.skill_got[30]
			{
				with instance_create(x+64,y+96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y+96,WeaponMod);
			
				with instance_create(x+64,y-96,WeaponMod)
					image_xscale = -1;
				instance_create(x-64,y-96,WeaponMod);
			}
		break;
	}
}