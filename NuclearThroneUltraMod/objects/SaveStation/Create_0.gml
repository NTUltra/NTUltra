/// @description Init
image_speed = 0.4;
active = false;
name = "SAVE RUN";
var fileString ="ntultrarun1.sav";
if (file_exists(fileString))
	name += "#(OVERWRITES EXISTING SAVE!)";
if UberCont.opt_gamemode == 26 || UberCont.opt_gamemode == 27
{
	name += "#DAILIES WILL BE LOADED AS NORMAL MODE RUNS"
}
