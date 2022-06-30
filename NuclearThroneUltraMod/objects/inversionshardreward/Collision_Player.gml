/// @description Pick up the shard
if KeyCont.key_pick[other.p] = 1 && UberCont.collectedInversionShards > 2 
&& !UberCont.collectedInversionShardReward
{
	KeyCont.key_pick[Player.p] = 2;
	UberCont.canSpawnInversionShards = false;
	UberCont.collectedInversionShardReward = true;
	with Player
	{
		maxlevel ++;// In room end check it will be set
		UberCont.levelIncrease += 1;
	}
	snd_play(sndUltraGrenadeSuck);
	snd_play(other.snd_thrn);
	instance_create(x,y,Flash);
}