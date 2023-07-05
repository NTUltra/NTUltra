/// @description Select deselect gamemode
snd_play_2d(sndClick);
if (scrCanComboGamemode(gamemodeOrder[gamemodenr]))
{
	with instance_create(UberCont.mouse__x,UberCont.mouse__y,HoldToAddRemoveGamemode)
		wantMode = other.gamemodeOrder[other.gamemodenr];
}
else
{
	with instance_create(UberCont.mouse__x,UberCont.mouse__y,HoldToReplaceGamemode)
		wantMode = other.gamemodeOrder[other.gamemodenr];
}
