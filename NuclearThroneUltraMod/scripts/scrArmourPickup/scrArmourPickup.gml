///scrArmourPickup();
// /@description
///@param
function scrArmourPickup(num){
	if UberCont.opt_ammoicon
	{
		dir = instance_create(x,y,PopupText)
		dir.sprt = sprArmourIconPickup;
		dir.mytext = "+"+string(num)
		if Player.armour >= Player.maxarmour
		dir.mytext = "MAX"
	}
	else
	{
		dir = instance_create(x,y,PopupText)
		dir.mytext = "+"+string(num)+" HP"
		if Player.armour >= Player.maxarmour
		dir.mytext = "MAX ARMOUR"
	}
	with Player
	{
		armour = min(maxarmour,armour + num);
	}
}