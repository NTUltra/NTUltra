/// @description Init race
bskin = UberCont.skin[race];
scrLoadRace();
UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
if (UberCont.selected_start_wep[race] == -1)
{
	do {wep = irandom(UberCont.maxstartwep);} until UberCont.start_wep_have[wep,race];
	wep = UberCont.start_wep[wep];
}
else {
	wep = UberCont.start_wep[UberCont.selected_start_wep[race]];
}
//Exclude some starting weapons
if (wep == 527 || wep == 224 || wep == 400 || wep == 589 || wep == 43 || wep == 567 || wep == 229 || wep == 286 || wep == 617
|| (wep == 649 && instance_exists(Player) && Player.race != 23))
{
	wep = race_swep[race];
}

bwep = 0;
if race == 7
{
	bwep = wep;
	accuracy = 1.8
}
gunY = 0;
pSpeedBoost = 1;
if race == 11
	pSpeedBoost = 1.18;
if race == 7 && bskin == 2
{
	gunY = 4;
}
if race == 19 //skeleton
{
    maxSpeed = 3.6;
    accuracy = 1.2;
}
else if race = 5 //Plant
	maxSpeed = 4.5;
else if race = 11//HUNTER
{
	accuracy = 0.8;	
}
standartAccuracy = accuracy;
scrWeaponHold();