function scrEmptyB() {
	clicked = 0
	snd_play(sndEmpty)
	dir = instance_create(x,y,PopupText)
	dir.mytext = "EMPTY "
	if ammo[wep_type[bwep]] > 0
	{
		dir.mytext = "NOT ENOUGH ";
		dir.sprt = sprAmmoIconsEmpty
		dir.ii = wep_type[bwep];
	}
	dir.theColour=c_red;
	wkick = -2



}
