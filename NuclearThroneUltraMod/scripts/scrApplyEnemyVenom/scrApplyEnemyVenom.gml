///scrApplyEnemyVenom();
// /@description
///@param
function scrApplyEnemyVenom(applierTeam, target) {
	with instance_create(x,y,EnemyVenom)
	{
		team = applierTeam;
		owner = target;
		if owner.object_index == Player
		{
			with GameRender
			{
				venomized = true;	
			}
			venomized = true;
		}
	}
}