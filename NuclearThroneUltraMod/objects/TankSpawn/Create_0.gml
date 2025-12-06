image_speed = 0.4
alarm[0] = 30;//47 - min(loops*2,20);
right = 1;
myTank = IDPDTank;
with MusCont
    {
    //audio_stop_all()
	scrStopSong();
    song = musUltraBossIDPDTank;
    scrPlaySong();
	audio_group_set_gain(agsfx,max(0, UberCont.opt_sfxvol),0);
    audio_sound_gain(song,max(0,UberCont.opt_musvol),0);
    audio_sound_gain(amb,max(0,UberCont.opt_ambvol),0);
}