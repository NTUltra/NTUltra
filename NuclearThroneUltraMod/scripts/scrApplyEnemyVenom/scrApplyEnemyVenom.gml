///scrApplyEnemyVenom();
// /@description
///@param
function scrApplyEnemyVenom(applierTeam, target) {
	if target.team != 0 && instance_number(EnemyVenom) < 20
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