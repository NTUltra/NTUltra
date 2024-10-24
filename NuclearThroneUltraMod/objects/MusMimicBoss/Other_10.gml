/// @description Update volumes
var al = array_length(tracks);
for (var i = 0; i < al; i++)
{
	if i != trackIndex
	{
		audio_stop_sound(tracks[i]);
	}
		
}
audio_play_sound(tracks[trackIndex],1,true,max(0,UberCont.opt_musvol),songTime);