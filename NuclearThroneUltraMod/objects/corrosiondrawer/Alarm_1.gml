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
//total 20 damage
for (var i = 0; i < al; i ++)
{
	with allHits[i]
	{
		if team != 2 && team != 0 and my_health > 0
		{
			if alarm[1] > 1
			{
				alarm[1] += 0.5;
				speed *= 0.5;
				walk *= 0.5;
			}
			DealDamage(other.dmg,false,true,false);
			if !audio_is_playing(sndGammaGutsProc)
				snd_play(sndGammaGutsProc);
			instance_create(x,y,Smoke)
		}
	}
}