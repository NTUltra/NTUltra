///SetSeed();
// /@description
///@param
function SetSeed(){
	with UberCont
	{
		var a = loops;
		if instance_exists(Player)
		{
			a = Player.loops*14;
			a += Player.area;
			a += Player.subarea*1414;
		}
		if (useSeed)
		{
			random_set_seed(seed+a)
		}
	}
}