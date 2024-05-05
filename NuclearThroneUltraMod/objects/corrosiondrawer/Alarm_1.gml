/// @description Damage delay
alarm[1] = 2;
var allHits = [];
with Corrosion
{
	var hits = ds_list_create();
	var al = instance_place_list(x,y,hitme,hits,false)
	for (var j = 0; j < al; j++) {
		if !array_contains(allHits,hits[| j])
			allHits[array_length(allHits)] = hits[| j];
	}
	ds_list_destroy(hits);
}
var al = array_length(allHits);
for (var i = 0; i < al; i ++)
{
	with allHits[i]
	{
		if team != 2 && team != 0 and my_health > 0
		{
			DealDamage(1,false,true,false);
			if !audio_is_playing(sndGammaGutsProc)
				snd_play(sndGammaGutsProc);
			instance_create(x,y,Smoke)
		}
	}
}