scrWeapons()
SetSeedWeapon();
weps[0] = scrDecideUltraWep()
do {
	weps[1] = scrDecideUltraWep()
}
until (weps[1] != weps[0]);
mySize = 1;
team = 0;
SetSeed();
event_inherited()
curse = 0

if isOneWeaponOnlyModes()
{
	instance_destroy(id,false);
	instance_create(x,y,WeaponChest);
}

heavyHeart = false;
ammoGet = 40;
if instance_exists(Player)
{
	if scrIsCrown(9)//Crown of love
	{
		alarm[1] = 10;
		if !instance_exists(GenCont)
			event_perform(ev_alarm,1);
		exit;
	}
	if Player.skill_got[0]
	{
		heavyHeart = true;
		ammoGet = 30;
		do {
			weps[2] = scrDecideUltraWep()
		}
		until (weps[2] != weps[1] && weps[2] != weps[0]);
	}
	if scrIsCrown(15)
	{
		ammoGet -= 10;	
	}
}