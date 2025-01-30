
image_index = num

if num > racemax //or UberCont.race_have[num] = 0
image_index = racemax+1

image_speed = 0

//visible = 1
var xstep = 22;
var loffset = 8;
if UberCont.newContent
{
	xstep = 20;
	loffset = 12;
}
x = __view_get( e__VW.XView, 0 )+loffset+xstep*num//-(UberCont.mouse__x-view_xview)*0.7
y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-36
row = 0;
if num == 13//SWAPP ATOM AND SHEEP
{
	row = 1;
	x = __view_get( e__VW.XView, 0 )+loffset+(xstep*2);
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
}
else if num == 15
{
	row = 0;
	x = __view_get( e__VW.XView, 0 )+loffset+(xstep*13);
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49
}
else if num == 28
{
	row = 0;
	x = __view_get( e__VW.XView, 0 )+loffset+xstep*(num-14);
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49
}
else if num == 29
{
	row = 1;
	x = __view_get( e__VW.XView, 0 )+loffset+xstep*(num-15);
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24
}
else if num > 13
{
//yy=58;
	row = 1;
	if num == 27//PUT HANDS AT BOTTOM LEFT
	{
		x = __view_get( e__VW.XView, 0 ) + loffset
	}
	else
	{
		x = __view_get( e__VW.XView, 0 )+loffset+xstep*(num-13);
	}
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-24

}
else
{
	y = yOffset + __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-49
	//x = view_xview+8+xstep;
}
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
{
	x += 54;	
}
//yy=32;//48
/*
var yyy = y + 48 - Menu.widescreen;
if instance_exists(UnlockingSecondRow)
{
	var t = UnlockingSecondRow.lerpTime * 0.5;
	draw_set_alpha(clamp(t,0,1));
	if num == 0 || num == 27
	{
		var center = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30;
		draw_rectangle(camera_get_view_x(view_camera[0]),min(center,yyy),x,max(center,yyy+24),false);	
	}
	if num == 13 || num == 26
	{
		var center = __view_get( e__VW.YView, 0 )+__view_get( e__VW.HView, 0 )-30;
		draw_rectangle(x + 16,min(center,yyy),camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]),max(center,yyy+24),false);	
	}
	draw_set_alpha(1);
}
*/
var yyy = y + 48 - Menu.widescreen;
if unlockTime > 0
{
	draw_sprite(sprite_index,-1,x,yyy)
	if !unlocking
		unlockTime -= 0.025;
	if unlockTime <= 0
	{
		depth += 100;	
	}
	draw_set_alpha(clamp(unlockTime,0.25,0.8));
	gpu_set_blendmode(bm_add);
	var ut = min(1,unlockTime);
	draw_set_colour(c_lime);
	draw_rectangle(x + 8 - 8*ut,yyy,x+7 + 8*ut,camera_get_view_y(view_camera[0]),false);
	gpu_set_blendmode(bm_normal);
	draw_set_colour(c_white);
	draw_set_alpha(1);
	draw_sprite_ext(sprite_index,image_number - 1,x,yyy,1,1,0,c_white,ut + 0.1);
}
else if !unlocking
{
	if Menu.race == image_index && !instance_exists(UnlockingCharacter)
	{
	    draw_sprite(sprSelected,-1,x,yyy)
	    draw_sprite(sprite_index,-1,x+2,yyy-2)
		if num == 24 && instance_exists(ElementorHeadMenu)
		{
			draw_sprite_ext(sprCharSelectElementorHead,0,x+2,yyy-2,1,1,0,ElementorHeadMenu.col,1);	
		}
	    /*
	    if Menu.mouseover != image_index
		{
			draw_sprite_ext(sprite_index,-1,x+2,yyy-2,1,1,0,c_white,0.05);
		}*/
	}
	else
	{
	    if UberCont.race_have[num] != 1
		{
			draw_sprite(sprCharSelectLocked,num,x,yyy)
			draw_sprite_ext(sprCharSelectDarkOverlay,0,x,yyy,1,1,0,c_white,lerp(0.5,0,hoverTime));
		}
		else
		{
			draw_sprite(sprite_index,-1,x,yyy)
			if num == 24 && instance_exists(ElementorHeadMenu)
			{
				draw_sprite_ext(sprCharSelectElementorHead,0,x,yyy,1,1,0,ElementorHeadMenu.col,1);
			}
			draw_sprite_ext(sprCharSelectDarkOverlay,0,x,yyy,1,1,0,c_white,lerp(0.5,0,hoverTime));
		}
    
	    if Menu.mouseover == image_index && num != 0
		{
			var col = make_color_rgb(72,253,8);// normal dark
			var didLoop = false;
			var gotSkins = false;
			var gotGuns = false;
			var gotCrowns = false;
			var gotAllUltras = false;
			if UberCont.ctot_loop[num]>0
				didLoop = true;
			if UberCont.race_bskin[num] && UberCont.race_cskin[num]
				gotSkins = true;
			if scrHasAllStartingWeapons(num)
			{
				gotGuns = true
			}
			if UberCont.ctot_all_crowns_taken[num] > 0
				gotCrowns = true;
			var i = ((num-1)*4) + 1;
			gotAllUltras = (UberCont.ctot_ultra_found[i] || UberCont.ctot_ultra_found[i+1] || UberCont.ctot_ultra_found[i+2] || UberCont.ctot_ultra_found[i+3])
			if num == 21 && !gotAllUltras// Horror
				gotAllUltras = UberCont.ctot_ultra_found[0];
			if gotAllUltras
			{
				gotAllUltras = scrHasFoundAllSecretUltrasFor(num);
			}
			if didLoop && gotSkins && gotGuns && gotCrowns && gotAllUltras
			{
				draw_sprite(sprCharSelectCompleted,0,x,yyy + 3);
			} else
			{
				if didLoop
					draw_rectangle_color(x,yyy,x+15,yyy+23,col,col,col,col,true);
			}
		}
    
	    if UberCont.race_have[num] =1 and UberCont.ctot_played[num] = 0 and num != 0 and num != 1 && num != 2
			draw_sprite(sprNew,-1,x,yyy + 22)
	}
}
else
{
	draw_sprite(sprCharSelectLocked,num,x,yyy);	
}
