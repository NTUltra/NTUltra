/// @description End gauntlet!
scrEndBossMusic();
with UberCont
{
	portalEssence += 3
	if voidChallengeGoing[0]
		portalEssence += 3;
}
with Player
{
	inverted = false;
	area = 9;
	subarea = 1;
	lastarea = 9;
	lastsubarea = 1;
}
instance_destroy();