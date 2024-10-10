/// @description Additional area population
if currentArea == 107
{
	scrSpawnBoss(InvertedBigDisc);
	if (loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((loops-4)*0.25),1,2));
}
else if currentArea == 106 && !instance_exists(WantBoss)
{
	instance_create(x, y, WantBoss);
}
else if currentArea == 125
{
	with WeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with BigWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
	with EliteWeaponChest
	{
		instance_create(x,y,GoldChest)
		instance_destroy(id,false);
	}
}
if currentArea == 109 && !instance_exists(InvertedChesireCat)
{
	scrSpawnBoss(InvertedChesireCat);
}
var hyperSomnia = false;
var t = 0;
if instance_exists(Player)
{
	if Player.skill_got[29]//Insomnia
	{
		hyperSomnia = true;
		t = 25;
		if Player.race == 25
			t = 30;
	}
	
}
with enemy
{
	alarm[1] += 60;
	if hyperSomnia
	{
		scrGiveSnooze();
		alarm[1] += t;
	}
}
alarm[0] = 120;