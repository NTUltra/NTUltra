///scrHandsDamageBuff();
// /@description
///@param
function scrHandsDamageBuff(dmgTaken){
	var dis = point_distance(x,y,Player.x,Player.y);
	if dis < 128
	{
		//dis *= 2
		if scrIsInInvertedArea()
		{
			return dmgTaken + (dmgTaken/max(40,dis))*60;
		}
		else
		{
			return dmgTaken + (dmgTaken/max(40,dis))*45;
		}
	}
	return dmgTaken;
}