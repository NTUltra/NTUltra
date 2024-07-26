///scrDecideCurse();
// /@description
function scrDecideCurse(){
	if scrIsGamemode(25)
		return 0;
	var curse = 0;
	if instance_exists(Player)
	{
		if Player.area == 115 || Player.area == 126
		{
			curse = 1
			return curse;
		}
		if random(4) < Player.nochest && !instance_exists(BigWeaponChest) && !isOneWeaponOnlyModes()
		{
		curse = 0
		instance_destroy(id,false);
		instance_create(x,y,BigWeaponChest);
		}
		else if object_index == WeaponChest && (Player.area == 127 || random(16)<1+Player.curse+Player.bcurse+Player.ccurse&&Player.hard>2){//8
		curse = 0
		instance_destroy(id,false);
		instance_create(x,y,EliteWeaponChest);
		}
		else if ( instance_exists(Crown)||Player.wepmod1!=0||Player.bwepmod1!=0 ) and random(7) < 1
			curse = 1
		else if scrIsCrown(14) && random(7)<5//Or you have a weapon mod
			curse = 1
		else if Player.hard > 4 and random(20) < 1
			curse = 1;
		else if Player.ultra_got[72] && !Player.altUltra && random(7)<5//AScent angel
			curse = 1;
		else
			curse = 0;

	}
	else if instance_exists(Crown) and random(7) < 1//Or you have a weapon mod
	curse = 1
	else
	curse = 0
	
	return curse;
}