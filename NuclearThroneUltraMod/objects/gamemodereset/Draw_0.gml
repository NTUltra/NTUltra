draw_sprite(sprite_index,image_index,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	with GameModeUpDown
	{
		gamemodenr = 0;
		event_user(0);	
	}
	alarm[0]=5;
	image_index=1;
}