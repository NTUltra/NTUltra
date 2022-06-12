/// @description xxx
image_xscale = 0.5;
image_yscale = 0.5;
alarm[0] = 6;
alarm[1] = 3;
with UberCont
{
	var saveFileString;
	var v = 0;
	while (v <= version)
	{
		saveFileString="ntultra"+string(v)+".sav";
		if ( file_exists(saveFileString) )
		{
			var deleted = file_delete(saveFileString);
			debug("delete ",deleted);
		}
		v++
	}
	v = 0;
	while (v <= encryptedVersion)
	{
		var saveFile ="ntultraencrypted"+string(v)+".sav";
		if (file_exists(saveFile))
		{	
			var deleted = file_delete(saveFile);
			debug("delete 2 ",deleted);
		}
		v++
	}
	persistent = false;
}