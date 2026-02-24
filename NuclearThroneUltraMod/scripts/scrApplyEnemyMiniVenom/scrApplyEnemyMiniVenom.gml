///scrApplyEnemyMiniVenom();
// /@description
///@param
function scrApplyEnemyMiniVenom(applierTeam, target, vDamage, vHits) {
	if instance_exists(target) && target.team != 0 && target.my_health > 0
		with instance_create(x,y,EnemyMiniVenom) && instance_number(EnemyVenom) < 20
		{
			dmg = vDamage;
			maxDamage = vHits - 1;
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