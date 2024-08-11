scrWeapons()
SetSeedWeapon();
mySize = 1;
team = 0;
SetSeed();
event_inherited();
wep = [];
ammoGet = 40;
curse = 0
heavyHeart = false;
mediumchest = 0;
if isOneWeaponOnlyModes()
{
	instance_destroy(id,false);
}
if instance_exists(Player)
{
	if (Player.ultra_got[25]==1)
    {
		mediumchest = 1;
    }
	if Player.skill_got[0]
	{
		heavyHeart = true;
		ammoGet = 30;
	}
	if scrIsCrown(15)
	{
		ammoGet -= 10;	
	}
	if scrIsCrown(9)//Crown of love
	{
		instance_create(x,y,AmmoChest);
		instance_destroy(id,false);
	}
}