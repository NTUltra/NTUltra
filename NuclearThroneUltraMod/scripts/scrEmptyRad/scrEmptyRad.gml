function scrEmptyRad() {
	if !audio_is_playing(sndUltraEmpty)
		snd_play(sndUltraEmpty)
	with instance_create(x,y,PopupText)
	{
		mytext = "NOT ENOUGH RADS"
		theColour=c_red;
	}
	BackCont.shake += 5;
}
