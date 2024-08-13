///scrCalculatePlayerBaseMaxHealth();
// /@description
///@param
function scrCalculatePlayerBaseMaxHealth(){
	with Player
	{
		return maxhealth - isPureHealthBoost - skeletonBonusHealth;
	}
	return 8;
}