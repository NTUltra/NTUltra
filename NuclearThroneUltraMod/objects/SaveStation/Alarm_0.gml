/// @description xxx
active = true;
if instance_exists(Player)
{
	if (UberCont.lastSaveLoop != Player.loops)
	{
		image_speed = 0.4;
		sprite_index = sprSaveStationIdle;
		image_index = 5;
	}
	else
	{
		name = 	"CAN ONLY SAVE ONCE PER LOOP";
	}
}
