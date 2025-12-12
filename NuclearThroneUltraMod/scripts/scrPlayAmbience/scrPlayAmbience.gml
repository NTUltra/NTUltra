/// @description scrPlayAmbience
function scrPlayAmbience(){
    if !UberCont.isUpdate100 && !audio_is_playing(amb)
        snd_loop(amb);
    else
    {
        var fName = program_directory + "amb/";
        var str = string(amb);
		if str == "ref sound -1"
			exit;
        if string_replace(str,"ambUltra","") == str
		{
            fName += string_replace(str,"amb","");
		}
        else
		{
			if !audio_is_playing(amb)
				snd_loop(amb);
			exit;
		}
        fName = string_replace(fName,"ref sound ","");
        amb = audio_create_stream(fName);
		if !audio_is_playing(amb) && fName != currentAmb
		{
			currentAmb = fName;
	        snd_loop(amb);
	        audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
	        alarm[1] = 1;
		}
    }
}