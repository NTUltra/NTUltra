/// @description Init
image_speed = 0.4;
active = false;
name = "SAVE RUN";
var fileString ="ntultrarun1.sav";
if (file_exists(fileString))
	name += "#(OVERWRITES EXISTING SAVE!)";
if scrIsGamemode(26) || scrIsGamemode(27)
{
	name += "#DAILIES WILL BE LOADED AS NORMAL MODE RUNS"
}
if (instance_exists(Player) && UberCont.lastSaveLoop == Player.loops)
{
	name = 	"CAN ONLY SAVE ONCE PER LOOP";
}
