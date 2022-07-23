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
				
		break;
		case 9:
			with instance_create(x+64,y+96,WeaponMod)
				image_xscale = -1;
			instance_create(x-64,y+96,WeaponMod);
		break;
		case 10:
			if instance_exists(Player) && Player.level > 1
				instance_create(x,y+96,RerollStation);
		break;
	}
}