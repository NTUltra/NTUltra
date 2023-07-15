///scrLoadCustomSurvivalArena();
// /@description
///@param
function scrLoadCustomSurvivalArena(){
	with UberCont
	{
		customSurvivalArena = [];
		if (scrIsGamemode(42))
		{
			if !scrIsGamemode(25)
				opt_gamemode[array_length(opt_gamemode)] = 25;
			var file = file_text_open_read(opt_custom_survival);
			var text = "";
			while (!file_text_eof(file))
			{
				text += file_text_readln(file);
			}
			file_text_close(file);
			customSurvivalArena = json_parse(text);
		}
		debug("NEW Arena: ", customSurvivalArena);
	}
}