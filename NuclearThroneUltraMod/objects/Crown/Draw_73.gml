/// @description Show crown name desc
if UberCont.opt_hud_des == 0
	exit;
if (UberCont.isPaused == 0 && UberCont.mouse__x < x+16 and UberCont.mouse__y < y+16 and UberCont.mouse__x > x-16 and UberCont.mouse__y > y-16)
{//name
	if UberCont.normalGameSpeed == 60
		hoverTime += 0.5;
	else
		hoverTime += 1;
	if hoverTime > 12
	{
		draw_set_color(c_black);
		draw_text(x,y-15,crown_name[crown]);
		draw_text(x+1,y-16,crown_name[crown]);
		draw_text(x+1,y-15,crown_name[crown]);
		var tt = string_hash_to_newline(scrReplaceAllColourCodes(crown_text[crown]));
		draw_text(x,y-7,tt);
		draw_text(x+1,y-8,tt);
		draw_text(x+1,y-7,tt);
		draw_set_color(c_silver);
		draw_text(x,y-8,tt);
		scrDrawTextColours(x,y-8,crown_text[crown]);
		draw_set_color(c_white);
		draw_text(x,y-16,crown_name[crown]);
	}
	alarm[1] = max(alarm[1], 2);
	walk = 0;
	speed = 0;
}
else
{
	hoverTime = 0;	
}