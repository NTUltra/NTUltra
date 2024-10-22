/// @description Set new favourites!
snd_play_2d(sndClick);
UberCont.opt_favourite_gamemode = [];
array_copy(UberCont.opt_favourite_gamemode,0,UberCont.opt_gamemode,0,array_length(UberCont.opt_gamemode));
alarm[0]=5;
image_index=1;