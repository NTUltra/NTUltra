mediumchest = 0;
shadowSprite = shd24;
if isOneWeaponOnlyModes()
	oneweponly = true;
else
	oneweponly = false;

event_inherited()

/*
if instance_exists(Player)
{
	if (Player.ultra_got[25]==1)
    {
    mediumchest=1;
    }
	if Player.crown == 99//Crown of love
	{
		instance_destroy(id,false);
		instance_create(x,y,AmmoChest);
	}
}*/

scrWeapons()
var wepAmount = 8;
weps = [];
var i = 0;
var newWep = 0;
repeat(wepAmount)
{
	var tries = 0;//Prevent infinite loop eventhough I dont think its possible
	do {
		newWep = scrDecideWep(0, 20, 0);
		tries ++;
	} until (!array_contains(weps,newWep) || tries > 5000)
	weps[i] = newWep;
	i++;
}
if instance_exists(Player) && !UberCont.start_wep_have_all[Player.race]
{
	weps[0] = scrDecideWepGold();
}
currentVisibleWep = 0;
if instance_exists(Player) && Player.skill_got[19]
	alarm[1] = 30;
actionName = "% RADS TO OPEN"
name = actionName;
explainTimer = 0;