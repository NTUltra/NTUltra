/// @description Update race
portraitLerp = 0;
with LoadoutSelect
{
	if other.race == 0
		wepmenuopen = false;
	race = other.race;
	skin = UberCont.skin[race]
	wep = UberCont.selected_start_wep[race];
	UberCont.start_wep[0]=race_swep[race];//Starting weapon 0 is different for each character
	other.skin = skin;
}
