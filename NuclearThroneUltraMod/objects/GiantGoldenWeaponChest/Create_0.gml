event_inherited()
///////
//curse = 0
//sprite_index = sprGiantGoldenChest
mySize = 2;
scrWeapons()
var wepAmount = 25;
weps = [];
var i = 0;
var newWep = 0;
var highRange = 5;
var lowRange = -2;
if instance_exists(Player)
{
	if Player.area > 7
		highRange -= 1;
	if Player.area > 9
		highRange -= 1;
	if Player.area > 11
		highRange -= 1;
	if Player.area > 12
		highRange -= 1;
	if Player.race == 8//ROBOT
	{
		highRange += 1;
		lowRange += 2;
	}
	if Player.ultra_got[29]
	{
		highRange += 1;
		lowRange += 3;
	}
}
repeat(wepAmount)
{
	SetSeedWeapon();
	var tries = 0;//Prevent infinite loop eventhough I dont think its possible
	do {
		newWep = scrDecideWep(irandom_range(highRange,lowRange));
		tries ++;
	} until (!array_contains(weps,newWep) || tries > 3000)
	weps[i] = newWep;
	i++;
}
if instance_exists(Player)
if instance_exists(Player) && !UberCont.start_wep_have_all[Player.race]
{
	weps[0] = scrDecideWepGold();
}
SetSeed();
if scrIsCrown(9)//Crown of love
{
	instance_destroy(id,false);
	instance_create(x,y,GiantGoldenAmmoChest);
}