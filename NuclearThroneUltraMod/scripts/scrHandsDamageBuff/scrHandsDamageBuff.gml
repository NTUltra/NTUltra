///scrHandsDamageBuff();
// /@description
///@param
function scrHandsDamageBuff(dmgTaken){
	var dis = point_distance(x,y,Player.x,Player.y);
	if dis < 180
	{
		//dis *= 2
		if scrIsInInvertedArea()
		{
			return dmgTaken + (dmgTaken/max(15,dis - 64))*10;
		}
		else
		{
			return dmgTaken + (dmgTaken/max(20,dis - 48))*10;
		}
	}
	return dmgTaken;
}