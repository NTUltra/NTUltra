///scrTranslateCustomSurvivalArena();
// /@description
///@param
function scrTranslateCustomSurvivalArena(){
	var file = file_text_open_read(opt_custom_survival);
	var text = "";
	while (!file_text_eof(file))
	{
		text += file_text_readln(file);
	}
	file_text_close(file);
	var allWaves = json_parse(text);
	var allLength = array_length(allWaves);
	for (var j = 0; j < allLength; j++)
	{
		var wantWave = allWaves[j];
		wantWave[0].floor = asset_get_index(wantWave[0].floor);
		wantWave[0].floorb = asset_get_index(wantWave[0].floorb);
		var al = array_length(wantWave);
		for (var i = 1; i < al; i++)
		{
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
		opt_custom_survival[j] = wantWave;
	}
}