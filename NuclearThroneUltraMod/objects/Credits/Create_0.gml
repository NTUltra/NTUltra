/// @description Init
text = "";
dullText = "";
audio_stop_all();
alarm[0] = 30;
inputDelay = 5;
alarm[2] = inputDelay;
canSkip = true;
with MusCont
{
	song = musCredits;
	snd_loop(song);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	
	amb = amb0c;
	if !audio_is_playing(amb)
		snd_loop(amb)
	audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
}
type = 0;
creditIndex = 0;
credits = [
["A <w>GAME<w> CREATED BY <y>VLAMBEER<y>",60],
["A <g>MOD<g> CREATED BY <p>ERDEPPOL<p>",60],
];
wepA = 0;
wepB = 0;
wepC = 0;
sit = sprMutant1Sit;