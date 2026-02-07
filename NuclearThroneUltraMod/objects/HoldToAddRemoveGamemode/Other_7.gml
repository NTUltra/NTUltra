/// @description Add or Remove
var al = array_length(UberCont.opt_gamemode);
if scrIsGamemode(wantMode)
{
	//Remove
	for (var i = 0; i < al; i++) {
		if (UberCont.opt_gamemode[i] == wantMode)
		{
			array_delete(UberCont.opt_gamemode,i,1);
			i = al;
			//Update character description for 'normal' mode
			if wantMode == 9
			{
				with Menu
				{
					scrRaces();
				}
			}
		}
	}
}
else
{
	//Add
	UberCont.opt_gamemode[array_length(UberCont.opt_gamemode)] = wantMode;
	//Update character description for 'normal' mode
	if wantMode == 9
	{
		with Menu
		{
			scrRaces();
		}
	}
}
instance_destroy();
