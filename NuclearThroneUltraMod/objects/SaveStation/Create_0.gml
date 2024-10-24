/// @description Init
depth = 6;
image_speed = 0.4;
active = false;
name = "SAVE RUN";
if scrIsGamemode(26) || scrIsGamemode(27)
{
	name += "#DAILIES WILL BE LOADED AS CLASSIC MODE RUNS"
}
if (instance_exists(Player) && UberCont.lastSaveLoop == Player.loops)
{
	name = 	"CAN ONLY SAVE ONCE PER LOOP";
}
