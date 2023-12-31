draw_sprite(sprite_index,0,x,y)
draw_set_valign(fa_top);
draw_set_halign(fa_left);
draw_text(x+8,y,"SET SEED");
if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	var inputSeed = get_string("LEVEL GENERATION SEED","GIVE ME YOUR SEED");
	with UberCont
	{
		useSeed = true;
		var byteSeed = 0;
		var byteSize = string_byte_length(inputSeed);
		for (var i = 0; i < byteSize; i++) {
			byteSeed = (byteSeed + string_byte_at(inputSeed, i)) << 1;
		}
		seed = byteSeed;
		gunGameSeed = seed;
		seedText = inputSeed;
		seedModeSeed = seed;
		seedModeSeedText = seedText;
		scrSave();
	}
}
