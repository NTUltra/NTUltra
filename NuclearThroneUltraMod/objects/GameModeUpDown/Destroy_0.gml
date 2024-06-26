with StartingWeaponUpDown
instance_destroy();
with GoToLeaderboard
instance_destroy();

with DiscAmountUpDown
instance_destroy();
with DiscDamageUpDown
instance_destroy();

with SeedSetter
instance_destroy();

with CustomSurvivalWave
instance_destroy();
//with GamemodeCharacterUpDown
//instance_destroy();
with GamemodeCharacterActiveUpDown
instance_destroy();
with RegalVisionGamemodeTracker
	instance_destroy();
if array_length(UberCont.opt_gamemode) < 1
	UberCont.opt_gamemode = [0];