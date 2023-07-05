/// @description Custom Wave
waveNumber = max(0,waveNumber-1);
waveNumber -= array_length(UberCont.customSurvivalArena)*Player.loops;
var wantWave = UberCont.customSurvivalArena[waveNumber];
var al = array_length(wantWave) - 1;

//Translate json
var property = wantWave[0];
if instance_exists(TopCont)
	TopCont.darkness = property.darkness;
with BackCont
{
	nightwind = property.nightwind;
	wind = property.wind;
	drip = property.drip;
	cheese = property.cheese;
	heavyrain = property.heavyrain;
	rain = property.rain;
	snow = property.snow;
	cave = property.cave;
}
if is_string(property.floor)
{
	with Floor
	{
		if styleb
			sprite_index = asset_get_index(property.floorb);
		else
			sprite_index = asset_get_index(property.floor);
	}
}
else
{
	with Floor
	{
		if styleb
			sprite_index = property.floorb;
		else
			sprite_index = property.floor;
	}
}
for (var i = 1; i < al; i++)
{
	if is_string(wantWave[i].obj)
		wantWave[i].obj = asset_get_index(wantWave[i].obj);
	
	if variable_struct_exists(wantWave[i],"xx")
	{
		var xxx = wantWave[i].xx;
		xxx = string_replace_all(xxx, "centerX", centerX);
		var result = 0;
		var plus = string_split(xxx,"+",true);
		var ap = array_length(plus)
		for (var p = 0; p < ap; p++)
		{
			result += real(plus[p]);
		}
		wantWave[i].xx = result;
	}
	if variable_struct_exists(wantWave[i],"yy")
	{
		var yyy = wantWave[i].yy;
		yyy = string_replace_all(yyy, "centerY", centerY);
		var result = 0;
		var plus = string_split(yyy,"+",true);
		var ap = array_length(plus)
		for (var p = 0; p < ap; p++)
		{
			result += real(plus[p]);
		}
		wantWave[i].yy = result;
	}
}
var j = 0;
repeat(1+Player.loops)
{
	for (var i = 1; i < al; i++)
	{
		wave[j] = wantWave[i];
		j++;
	}
}
wantWave = [];
#region loop and song

with MusCont
{
	audio_stop_sound(song);
	song = asset_get_index(property.song);
	snd_loop(song);
	audio_sound_gain(song, max(0, sqrt(UberCont.opt_musvol)), 0);
}
waveLength = array_length(wave);
for (var w = 0; w < waveLength; w++) {
	//Decrease duration between spawns each loops
	wave[w].time = clamp(wave[w].time/(1+(loops*0.4)),
	1,wave[w].time);
}
#endregion
if waveNumber >= array_length(UberCont.customSurvivalArena) - 1
{
	Player.loops++;
}