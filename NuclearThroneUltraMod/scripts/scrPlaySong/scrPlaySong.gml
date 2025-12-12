/// @description scrPlaySong
function scrPlaySong(){
    if !UberCont.isUpdate100 && !audio_is_playing(song)
        snd_loop(song);
    else
    {
        var fName = program_directory + "mus/";
        var str = string(song);
		if str == "ref sound -1"
			exit;
        if string_replace(str,"musUltra","") == str
		{
            fName += string_replace(str,"mus","");
		}
        else
		{
			if !audio_is_playing(song)
				snd_loop(song);
			exit;
		}
        fName = string_replace(fName,"ref sound ","");
        song = audio_create_stream(fName);
		if !audio_is_playing(song) && fName != currentSong
		{
			currentSong = fName;
			snd_loop(song);
			audio_sound_gain(song, max(0, UberCont.opt_musvol), 0);
			alarm[1] = 1;
		}
    }
}