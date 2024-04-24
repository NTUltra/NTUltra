/// @description Slowmo sound
if !wasMinipulated && mySound != MusCont.song
{
	audio_sound_pitch(mySound,0.75);
	wasMinipulated = true;
	alarm[0] *= 1.2;
}