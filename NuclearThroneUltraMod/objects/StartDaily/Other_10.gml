/// @description Return to menu
instance_activate_all()
UberCont.opt_gamemode = [UberCont.opt_default_gm];
UberCont.isLeaderboardGamemode = false;
UberCont.viewDailyGamemode = false;
isPaused = 0
//audio_stop_all();
if instance_exists(Player)
	kills = Player.kills
with Player
{
	skeletonlives = 0;
	ultra_got[87] = 0;
	instance_destroy(id, false)
}
scrRestart()