///xxx();
// /@description
///@param
function scrReturnMenu(){
	if Menu.openSaveSlots
	{
		if Menu.saveSlotState > 0
			Menu.saveSlotState -= 1;
		else
			Menu.openSaveSlots = 0;
		return false;
	}
	else if (UberCont.loadRunMenuState > 0)
	{
		return false;
	}
	else if hasNoMenuOpen()
	{
		if LoadoutSelect.ultraOpen
		{
			LoadoutSelect.ultraOpen = false;
			return false;
		}
		else if LoadoutSelect.wepmenuopen
		{
			LoadoutSelect.wepmenuopen = false;
			return false;
		}
		snd_play_2d(sndClickBack);
		//if OptionSelect.selected = 1
		//room_goto(romInit)
		//if OptionSelect2.selected = 1
		//room_goto(romInit)
		/*
		debug("SAVE!?");
		with UberCont
		{
			scrSave();
		}
		*/
		with LoadoutSelect
		instance_destroy()
		with CharSelect
		instance_destroy()
		with CreditsSelect
		instance_destroy()
		with OptionSelect
		instance_destroy()
		with OptionSelect2
		instance_destroy()
		//with UpdateSelect
		//instance_destroy()
		with GameModeUpDown
		instance_destroy();
		with GameModeReset
		instance_destroy();
		with QuitSelect
		instance_destroy()
		with LoadSelect
		instance_destroy()
		with Menu
		{
			logoin = 240
			mode = 0
			image_index = 0
			alarm[0] = 10
		}
		return true;
	}
	else
	{
		snd_play_2d(sndClickBack);
		with OptionSelect {
			if instance_exists(DeleteSave)
			{
				with UberCont
				{
					scrSaveGamePreferenceOptions();	
				}
			}
			alarm[0] = 1;
			with option
				instance_destroy()
		}
		with OptionSelect2 {
			alarm[0] = 1;
			with option2
				instance_destroy()
		}
		/*
		with UpdateSelect {
			alarm[0] = 1;
		}*/
		with CreditsSelect {
			alarm[0] = 1;
		}
		with StatsSelect {
			alarm[0] = 1;
		}
		with UpdateChecker
		{
			alarm[0] = 1;	
		}
		with LoadSelect
		{
			alarm[0] = 1;	
		}
	}
	return true;
}