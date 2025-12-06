/// @description scrPlayAmbience
function scrPlayAmbience(){
    if !UberCont.gameRelease
        snd_loop(amb);
    else
    {
        var fName = program_directory + "amb/";
        var str = string(amb);
        if string_replace(str,"ambUltra","") == str
            fName += string_replace(str,"amb","");
        else
            fName += str;
        fName = string_replace(fName,"ref sound ","");
        amb = audio_create_stream(fName);
        snd_loop(amb);
        audio_sound_gain(amb, max(0, UberCont.opt_ambvol), 0);
        alarm[1] = 1;
    }
}