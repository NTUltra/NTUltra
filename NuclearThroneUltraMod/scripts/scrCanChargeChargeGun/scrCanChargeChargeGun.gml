///scrCanChargeChargeGun();
// /@description
///@param
function scrCanChargeChargeGun(){
	//return (KeyCont.key_fire[Player.p] = 1 or KeyCont.key_fire[Player.p] = 2 or Player.keyfire = 1 or Player.clicked = 1 or KeyCont.key_spec[Player.p] = 1 or KeyCont.key_spec[Player.p] = 2) && (Player.ammo[type]>=cost);
	return (
		(
			(KeyCont.key_fire[Player.p] = 1 or KeyCont.key_fire[Player.p] = 2 or Player.keyfire = 1 or Player.clicked = 1) ||
			(KeyCont.key_spec[Player.p] = 1 || KeyCont.key_spec[Player.p] = 2)
		) && 
		(Player.ammo[type] >= cost || Player.alarm[2] > 0)
	)
}