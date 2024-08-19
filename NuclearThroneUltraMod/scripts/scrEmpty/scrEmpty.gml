function scrEmpty() {
	clicked = 0
	snd_play(sndEmpty)
	dir = instance_create(x,y,PopupText)
	dir.mytext = "EMPTY "
	if ammo[wep_type[wep]] > 0
	{
		dir.mytext = "NOT ENOUGH ";
		dir.sprt = sprAmmoIconsEmpty
		dir.ii = wep_type[wep];
	}
	dir.theColour=c_red;
	wkick = -2
	drawempty = 30
}
