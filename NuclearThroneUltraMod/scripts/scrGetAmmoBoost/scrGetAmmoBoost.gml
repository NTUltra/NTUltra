///scrGetAmmoBoost();
// /@description
///@param
function scrGetAmmoBoost(){
	var ammoBoost = 1;
	if instance_exists(Player) && Player.ultra_got[113] && Player.altUltra
	{
		ammoBoost += UberCont.portalEssence*0.0015; //50 portal essence = +7.5%
	}
	return ammoBoost;
}