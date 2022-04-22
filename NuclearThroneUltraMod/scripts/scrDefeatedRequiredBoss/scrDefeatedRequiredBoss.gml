///scrDefeatedRequiredBoss();
// /@description
///@param bossName from secretChallengeBosses enum
function scrDefeatedRequiredBoss(bossName){
	with UberCont {
		if !array_contains(killedBoss,bossName)
		{
			killedBoss[array_length(killedBoss)] = bossName;
		}
	}
}