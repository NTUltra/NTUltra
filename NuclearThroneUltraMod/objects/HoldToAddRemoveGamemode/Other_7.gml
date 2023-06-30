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
		}
	}
}
else
{
	//Add
	UberCont.opt_gamemode[array_length(UberCont.opt_gamemode)] = wantMode;
}
instance_destroy();
