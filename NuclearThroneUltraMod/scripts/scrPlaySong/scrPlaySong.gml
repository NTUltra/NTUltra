/// @description scrPlayAmbience
function scrPlaySong(){
    if !UberCont.gameRelease
        snd_loop(song);
    else
    {
        var fName = program_directory + "mus/";
        var str = string(song);
        if string_replace(str,"musUltra","") == str
            fName += string_replace(str,"mus","");
        else
            fName += str;
        fName = string_replace(fName,"ref sound ","");
        song = audio_create_stream(fName);
        snd_loop(song);
        audio_sound_gain(song, max(0, UberCont.opt_ambvol), 0);
        alarm[1] = 1;
    }
}