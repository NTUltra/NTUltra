/// @description End gauntlet!
scrEndBossMusic();
with Player
{
	inverted = false;
	area = 9;
	subarea = 1;
	lastarea = 9;
	lastsubarea = 1;
	scrUnlockGameMode(51,"FOR COMPLETING#THE INVERSION GAUNTLET",0)
}
instance_destroy();