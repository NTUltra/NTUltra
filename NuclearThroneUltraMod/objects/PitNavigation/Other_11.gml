/// @description Additional area population
if currentArea == 107
{
	UberCont.hadBossIntro = false;
	with Player
	{
		instance_create(x,y,IDPDSpawn);	
	}
	scrSpawnBoss(InvertedBigDisc);
	if (loops > 5)
		scrSpawnMoreBosses(InvertedBigDisc,1+clamp(floor((loops-4)*0.25),1,2));
}
else if currentArea == 106 && !instance_exists(WantBoss)
{
	UberCont.hadBossIntro = false;
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
else if currentArea == 124 && loops > 1
{
	UberCont.hadBossIntro = false;
	scrSpawnBoss(BecomeInvertedMushroomBoss)
	scrSpawnMoreBosses(BecomeInvertedMushroomBoss,2);
}
else if currentArea == 109 && !instance_exists(InvertedChesireCat)
{
	UberCont.hadBossIntro = false;
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
with RadChest
{
	raddrop -= 8;
}
alarm[0] = 120;