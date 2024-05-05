///xxx();
// /@description
///@param
function scrThisUltraIsCompatibleWithAlt(theSkill){
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
		if tt.ultra_name[theSkill] != ultra_name[theSkill]
			return true;
		instance_destroy();
	}
	with tt
	{
		instance_destroy();	
	}
	return false;
}