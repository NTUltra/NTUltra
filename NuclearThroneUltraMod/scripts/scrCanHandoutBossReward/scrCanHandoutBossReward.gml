///scrCanHandoutBossReward();
// /@description
///@param
function scrCanHandoutBossReward(theBoss){
	with UberCont
	{
		var myB = array_contains_get_index(killedBoss, theBoss)
		if myB != -1 && !array_contains(collectedRewards, theBoss)
		{
			collectedRewards[array_length(collectedRewards)] = theBoss;
		}
	}
}