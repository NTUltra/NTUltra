if UberCont.normalGameSpeed == 60
	draw_sprite(sprite_index,1,x,y)
else
	draw_sprite(sprite_index,0,x,y)

if mouse_check_button_pressed(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	snd_play_2d(sndClick);
	if UberCont.normalGameSpeed == 30
	{
		UberCont.normalGameSpeed = 60;
		if !instance_exists(FPSHACK) && !instance_exists(DeleteSave)
			instance_create(x,y,FPSHACK);
	}
	else
	{
		UberCont.normalGameSpeed = 30;
		with FPSHACK
			instance_destroy();
	}
	room_speed = UberCont.normalGameSpeed;
	if instance_exists(DeleteSave)
	{
		debug("MAIN MENU");
		room_speed = 30;
	}
}

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("OFF")))
y=round(__view_get( e__VW.YView, 0 )+192)

