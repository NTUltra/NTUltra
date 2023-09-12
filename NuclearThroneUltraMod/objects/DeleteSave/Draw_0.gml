if doneFor 
{
	draw_sprite(sprite_index,1,x,y)

	x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("BYE")))
	y=round(__view_get( e__VW.YView, 0 )+192)
	var l = camera_get_view_x(view_camera[0]);
	var r = camera_get_view_width(view_camera[0]);
	var t = camera_get_view_y(view_camera[0]);
	var b = camera_get_view_height(view_camera[0]);
	var te = "OMNOM";
	var w = string_width(te);
	var h = string_height(te);
	var xx = l - w*0.5;
	var yy = t - h*0.5;
	while (xx < r)
	{
		yy = t - h*0.5;
		while (yy < b)
		{
			draw_text(xx,yy,te);
			yy += h;
		}
		xx += w;
	}
	//draw_text(x+20,y,string_hash_to_newline(string(fh)+joke))
}
else
{
	draw_set_halign(fa_left);
var im = 0;
var joke = "";
var fh = 10;
if mouse_check_button(mb_left) and UberCont.mouse__x > x and UberCont.mouse__x < x+8 and UberCont.mouse__y > y and UberCont.mouse__y < y+8
{
	holdTimer -= 2/room_speed;
	im = 1;
	fh = floor(holdTimer);
	if fh <= -5
	{
		doneFor = true;
		instance_create(camera_get_view_x(view_camera[0])+ (camera_get_view_width(view_camera[0])*0.5),
		camera_get_view_y(view_camera[0]) + (camera_get_view_height(view_camera[0])*0.5),
		SaveEater);
		snd_play_2d(sndPotato);//I'm sorry?
	}
	else if fh <= -4
	{
		joke = " DELETING#SAVE...";
	}
	else if fh <= -3
	{
		joke = " OKE.";
	}
	else if fh <= -2
	{
		joke = " I'M#STILL ALIVE?";
	}
	else if fh <= -1
	{
		joke = " ???";
	}
	else if fh == 0
	{
		joke = " HOLD ON"
	}
	else if fh <= 1
	{
		joke = " FAREWELL#CRUEL WORLD";	
	} else if fh <= 2
	{
		joke = " LAST#WARNING";	
	} else if fh <= 3 
	{
		joke = " I WARNED#YOU";	
	}else if fh <= 5
	{
		joke = " YOU CAN#NOT RETURN";	
	} else if fh <= 7
	{
		joke = " BE CAREFUL";	
	}
	
}
else
{
holdTimer = 10;	
}

draw_sprite(sprite_index,im,x,y)

x=round(__view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )/2+10+string_width(string_hash_to_newline("HOLD")))
y=round(__view_get( e__VW.YView, 0 )+200)

draw_text(x+10,y,string_hash_to_newline(string(fh)+joke))
}