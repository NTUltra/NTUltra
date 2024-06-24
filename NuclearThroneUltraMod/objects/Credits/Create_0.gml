/// @description Init
audio_stop_all();
instance_create_depth(x,y,depth + 2,ThroneIISpiral);
alarm[0] = 5;
with MusCont
{
	song = musCredits;
	snd_loop(song);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
}
text = "";
dullText = "";
creditIndex = 0;
credits = [
["A <w>GAME<w> CREATED BY <y>VLAMBEER<y>",60],
["A <g>MOD<g> CREATED BY <p>ERDEPPOL<p>",60],
];