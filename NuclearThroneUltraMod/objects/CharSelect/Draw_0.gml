scrRaces()
image_index = num

if num > racemax //or UberCont.race_have[num] = 0
image_index = racemax+1

image_speed = 0

visible = 1


x = __view_get( e__VW.XView, 0 )+8+22*num//-(UberCont.mouse__x-view_xview)*0.7
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-36
if num>13
{
//yy=58;
	if num == 27
	{
		x = __view_get( e__VW.XView, 0 ) + 8
	}
	else
	{
		x = __view_get( e__VW.XView, 0 )+8+22*(num-13);
	}
	y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24

}
else
{
y = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49
normalDepth = lowerDepth;
depth = normalDepth;
//x = view_xview+8+22;
}
//yy=32;//48
var yyy = y + 48 - Menu.widescreen;
if Menu.race = image_index
{
    draw_sprite(sprSelected,-1,x,yyy)
    draw_sprite(sprite_index,-1,x+2,yyy-2)
	depth = normalDepth - 10;
    
    if Menu.mouseover != image_index
    draw_sprite_ext(sprite_index,-1,x+2,yyy-2,1,1,0,c_black,0.05)
}
else
{
    draw_sprite(sprite_index,-1,x,yyy)
    if UberCont.race_have[num] != 1
    draw_sprite(sprCharSelectLocked,num,x,yyy)
    
    if Menu.mouseover != image_index
	{
		draw_sprite_ext(sprite_index,-1,x,yyy,1,1,0,c_black,0.3)
		//var col = make_color_rgb(72,253,8); normal dark
		var col = make_color_rgb(72,156,8);// darker
		//var col = make_color_rgb(34,76,7); // darkest
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		depth = normalDepth - 1;
	}
	else
	{
		var col = make_color_rgb(72,253,8);
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		depth = normalDepth - 5;
	}
    
    if UberCont.race_have[num] =1 and UberCont.ctot_played[num] = 0 and num != 0
    draw_sprite(sprNew,-1,x,yyy)

}

