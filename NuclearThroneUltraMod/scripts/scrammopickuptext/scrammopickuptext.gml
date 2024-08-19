///scrAmmoPickupText();
// /@description
///@param
function scrAmmoPickupText(type, amount){
	if (UberCont.opt_ammoicon)
	{
		dir = instance_create(x,y,PopupText)
		dir.sprt = sprAmmoIconsPickup
		dir.ii = type;
		dir.mytext = "+"+string(round(amount))
		if ammo[type] >= typ_amax[type]
			dir.mytext = "MAX"
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(round(amount))+" "+string(typ_name[type])
		if ammo[type] >= typ_amax[type]
			dir.mytext = "MAX "+string(typ_name[type])
	}
}