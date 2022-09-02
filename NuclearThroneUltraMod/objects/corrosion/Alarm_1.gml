/// @description Damage delay
alarm[1] = 2;
var hits = ds_list_create();
var al = instance_place_list(x,y,hitme,hits,false)
for (var j = 0; j < al; j++) {
	with hits[| j]
	{
		if team != 2 && team != 0 and my_health > 0
		{
			my_health -= 1;
			if !audio_is_playing(sndGammaGutsProc)
				snd_play(sndGammaGutsProc);
			instance_create(x,y,Smoke)
		}
	}
}
ds_list_destroy(hits);