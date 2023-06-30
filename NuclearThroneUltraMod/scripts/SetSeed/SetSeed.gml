///SetSeed();
// /@description
///@param
function SetSeed(){
	with UberCont
	{
		var a = loops;
		if instance_exists(Player)
		{
			a = Player.loops*10;
			a += Player.area;
			a += Player.subarea*10;
		}
		if (useSeed)
		{
			random_set_seed(seed+a)
		}
	}
}