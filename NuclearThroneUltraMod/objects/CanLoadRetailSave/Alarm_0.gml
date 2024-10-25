/// @description And go
with UberCont
{
	if !scrLoadInRetailSave()
	{
		other.step = 1;
	}
}
game_restart();