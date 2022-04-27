///scrHandsDamageBuff();
// /@description
///@param
function scrHandsDamageBuff(dmgTaken){
	if scrIsInInvertedArea()
	{
		//Probably add a min in also because division by 0 error
		return dmgTaken + (dmgTaken/(point_distance(x,y,Player.x,Player.y)*20))*200;
	}
	else
	{
		return dmgTaken + (dmgTaken/(point_distance(x,y,Player.x,Player.y)*20))*200;
	}
}