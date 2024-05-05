///xxx();
// /@description
///@param
function scrHasAnUltraThatsCompatibleWithAlt(){
	if !instance_exists(Player)
		return false;
	var tt = instance_create(0,0,TempDataHolder)
	with tt {
		var alty = Player.altUltra;
		Player.altUltra = false;
		scrUltras();
		Player.altUltra = alty;
	}
	with instance_create(0,0,TempDataHolder) {
		
		scrUltras(true,false);
		ultra_got = Player.ultra_got;
		var ui = 0;
		repeat(maxultra+2)
		{
			if ultra_got[ui] && tt.ultra_name[ui] != ultra_name[ui]
				return true;
			ui += 1
		}
		instance_destroy();
	}
	with tt
	{
		instance_destroy();	
	}
	return false;
}