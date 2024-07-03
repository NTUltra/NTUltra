/// @description Init
depth = 6;
image_speed = 0.4;
name = "CHOOSE ANY MUTATION#NEXT LEVEL UP"
alarm[6] = 5;
text = "";
dullText = "";
cutsceneIndex = 0;
cutsceneText = [
["MEANWHILE#SOMEWHERE ELSE...",120],
["",120],
];
alarm[0] = 90;
with MusCont
{
	audio_stop_sound(song);
	audio_stop_sound(amb);
	amb = amb0c;
	snd_loop(amb);
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
	audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
	audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}
depth = -99999;