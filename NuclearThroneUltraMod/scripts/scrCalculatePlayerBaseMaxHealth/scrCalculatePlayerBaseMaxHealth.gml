///scrCalculatePlayerBaseMaxHealth();
// /@description
///@param
function scrCalculatePlayerBaseMaxHealth(){
	with Player
	{
		return maxhealth - isPureHealthBoost - skeletonBonusHealth - abundanceHealth;
	}
	return 8;
}