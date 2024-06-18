///scrCanArmourHeal();
// /@description
///@param
function scrCanArmourHeal() {
	if armour >= maxarmour && (!skill_got[5] || freeArmourStrike)
		return false;
	var t = wep_type[wep]
	if t == 0
	{
		BackCont.shake += 5;
		with instance_create(x,y,PopupText)
		{
			mytext = "DOES NOT USE#AMMO"
			theColour=c_red;
		}
	}
	else if (t == 1 && ammo[t] > 190) || (t != 1 && ammo[t] > 40)
	{
		return true;
	}
	else
	{
		BackCont.shake += 5;
		with instance_create(x,y,PopupText)
		{
			mytext = "NOT ENOUGH#AMMO"
			theColour=c_red;
		}
	}
	return false;
}