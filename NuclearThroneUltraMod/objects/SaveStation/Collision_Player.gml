/// @description SAVE THE GAME YO
if active && instance_exists(Player) && Player.my_health > 0 && (true || UberCont.lastSaveLoop != Player.loops)
{
	with Player
		isOnInteractable = true;
	if KeyCont.key_pick[other.p] = 1
	{
		KeyCont.key_pick[Player.p] = 2;
		sprite_index = sprSaveStationSave;
		image_index = 0;
		active = false;
		alarm[0] = 20;/. 
		//snd_play(other.snd_thrn);
		scrOpenSaveMenu();
	}
}