/// @description Return to menu
if alarm[0] > 1
	exit;
instance_activate_all()
isPaused = 0
//audio_stop_all();
if instance_exists(Player)
kills=Player.kills
with Player
{
	skeletonlives = 0;
	ultra_got[87] = 0;
	instance_destroy()
}
scrRestart()