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
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
{
	x += 54;	
}
//yy=32;//48
var yyy = y + 48 - Menu.widescreen;
if Menu.race = image_index
{
    draw_sprite(sprSelected,-1,x,yyy)
    draw_sprite(sprite_index,-1,x+2,yyy-2)
	if num == 24 && instance_exists(ElementorHeadMenu)
	{
		draw_sprite_ext(sprCharSelectElementorHead,0,x+2,yyy-2,1,1,0,ElementorHeadMenu.col,1);	
	}
	depth = normalDepth - 10;
    
    if Menu.mouseover != image_index
	{
		draw_sprite_ext(sprite_index,-1,x+2,yyy-2,1,1,0,c_white,0.05);
	}
}
else
{
    if UberCont.race_have[num] != 1
		draw_sprite(sprCharSelectLocked,num,x,yyy)
	else
	{
		draw_sprite(sprite_index,-1,x,yyy)
		if num == 24 && instance_exists(ElementorHeadMenu)
		{
			draw_sprite_ext(sprCharSelectElementorHead,0,x,yyy,1,1,0,ElementorHeadMenu.col,1);
		}
	}
    
    if Menu.mouseover != image_index
	{
		/*
		draw_sprite_ext(sprite_index,-1,x,yyy,1,1,0,c_black,0.3)
		var colll = make_color_rgb(72,253,8);// normal dark
		var coll = make_color_rgb(72,156,8);// darker
		var col = make_color_rgb(34,76,7); // darkest
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		if UberCont.race_bskin[num] && UberCont.race_cskin[num]
		{
			draw_rectangle_color(x-1,yyy-1,x+16,yyy+24,coll,coll,coll,coll,true);
			if scrHasAllStartingWeapons(num) && UberCont.ctot_all_crowns_taken[num] > 0
				draw_rectangle_color(x-2,yyy-2,x+17,yyy+25,colll,colll,colll,colll,true);
		}
		*/
		depth = normalDepth - 1;
	}
	else
	{
		/*
		var coll = make_color_rgb(72,253,8);
		var col = make_color_rgb(72,156,8);
		if UberCont.ctot_loop[num]>0
			draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
		if UberCont.race_bskin[num] && UberCont.race_cskin[num]
			draw_rectangle_color(x-1,yyy-1,x+16,yyy+24,coll,coll,coll,coll,true);
			*/
		var colll = make_color_rgb(72,253,8);// normal dark
		var coll = make_color_rgb(72,156,8);// darker
		var col = make_color_rgb(34,76,7); // darkest
		//var gold = make_color_rgb(223,201,134);
		var didLoop = false;
		var gotSkins = false;
		var gotGunsCrown = false;
		if UberCont.ctot_loop[num]>0
			didLoop = true;
		if UberCont.race_bskin[num] && UberCont.race_cskin[num]
			gotSkins = true;
		if scrHasAllStartingWeapons(num) && UberCont.ctot_all_crowns_taken[num] > 0
			gotGunsCrown = true;
		if didLoop && gotSkins && gotGunsCrown
		{
			draw_sprite(sprCharSelectCompleted,0,x,y);
			//draw_rectangle_color(x,yyy,x+15,yyy+23,gold,gold,gold,gold,true);
		} else
		{
			if didLoop
				draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
			if gotSkins
				draw_rectangle_color(x-1,yyy-1,x+16,yyy+24,coll,coll,coll,coll,true);
			if gotGunsCrown
				draw_rectangle_color(x-2,yyy-2,x+17,yyy+25,colll,colll,colll,colll,true);
		}
		depth = normalDepth - 5;
	}
    
    if UberCont.race_have[num] =1 and UberCont.ctot_played[num] = 0 and num != 0
    draw_sprite(sprNew,-1,x,yyy)

}

