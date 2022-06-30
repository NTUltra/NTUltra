/// @description Pick up the shard
if KeyCont.key_pick[other.p] = 1
{
	KeyCont.key_pick[Player.p] = 2;
	UberCont.collectedInversionShards ++;
	BackCont.shake += 10;
	snd_play(sndCollectShard);
	collected = true;
	with instance_create(x,y,SurvivalPortal)
		depth = other.depth - 1;
}