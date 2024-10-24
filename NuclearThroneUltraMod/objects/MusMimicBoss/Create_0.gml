/// @description Init songs
tracks = [musUltraMimicBoss,musUltraMimicBoss,musUltraMimicBoss,musUltraMimicBoss,musUltraMimicBoss,musUltraMimicBoss,musUltraMimicBoss];
audio_play_sound(tracks[0],1,true);
audio_play_sound(tracks[1],1,true);
audio_play_sound(tracks[2],1,true);
audio_play_sound(tracks[3],1,true);
audio_play_sound(tracks[4],1,true);
audio_play_sound(tracks[5],1,true);
trackIndex = 0;
timer = 0;
beatTime = 30;
songTime = 0;
songDuration = audio_sound_length(tracks[trackIndex]);
event_user(0);