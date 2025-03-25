var hoverText = "";
var xo = 0;
if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
	xo = 108;
draw_sprite_ext(sprLoadoutOpenArrowSplatBright,3,__view_get( e__VW.XView, 0 )+xo+300 + 16,
lerp(__view_get( e__VW.YView, 0 ) - 100,__view_get( e__VW.YView, 0 ) + 48,newMenuTime),1,1,0,c_white,1);
var splx = __view_get( e__VW.XView, 0 )+xo+304;
var sply = lerp(__view_get( e__VW.YView, 0 ) + 300,__view_get( e__VW.YView, 0 )+174,newMenuTime);
draw_sprite(sprMutationSplatBright,3,splx+24,sply+44);


if (hasNoMenuOpen()
 && race != 0)
{
	newMenuTime += 0.3;
	if newMenuTime > 1
		newMenuTime = 1;
	draw_set_halign(fa_left)
	draw_set_valign(fa_top)
	var isOverwriteWeapon = (scrIsGamemode(1) || scrIsGamemode(46));
	
	if (wepmenuopen && !ultraOpen) {
		time += 0.3;
		var transition = 0;
		if time > 1
		{
			time = 1;
			weaponTransition += 0.15;
			if weaponTransition > 1
				weaponTransition = 1;
			transition = lerp(0,UberCont.maxstartwep+1,weaponTransition);
		}
	    draw_sprite(sprSplash,0,
		lerp(__view_get( e__VW.XView, 0 )+xo+77+243,__view_get( e__VW.XView, 0 )+xo+77,time),
		__view_get( e__VW.YView, 0 )+49);
	    var wepiter = 0;
	    var wepx = 148;
	    var wepy = 85;
	    var spritewidth = 0;
	    do {
			var sprite = wep_sprt[UberCont.start_wep[wepiter]];
	        spritewidth = sprite_get_width(sprite);
	        if (wepx + spritewidth > 320 ||
			(wepy >= 160 && wepx + spritewidth > 280)){
	            wepx = 147;
	            wepy += 15;
	        }
	        var xx = __view_get( e__VW.XView, 0 )+xo+wepx;
			var yy = __view_get( e__VW.YView, 0 )+wepy;
			var l = xx;
			xx += sprite_get_xoffset(sprite);
			var r = l + spritewidth;
			var sh = sprite_get_height(sprite) * 0.5;
			var t = yy - sh;
			var b = yy + sh;
			var imageIndex = 1;
			var col = make_colour_rgb(150, 150, 150);
			var selected = false;
			var bselected = false;
			if UberCont.start_wep_have[wepiter,race]=1
			{
				if (UberCont.mouse__x > l && UberCont.mouse__x < r && UberCont.mouse__y > t && UberCont.mouse__y < b)
				{
					if wepiter > -1
						hoverText = wep_name[UberCont.start_wep[wepiter]];
					if hoverText == ""
						hoverText = "UNARMED";
					xx += 1;
					yy -= 2;
					col = c_white;
					if mouse_check_button_pressed(mb_left)
					{
						snd_play_2d(sndClick);
						wep = wepiter;
					}
					if mouse_check_button_pressed(mb_right) && UberCont.secondary_start_wep[race]
					{
						snd_play_2d(sndClick);
						if bwep == wepiter
							bwep = -2;
						else
							bwep = wepiter;
					}
				}
				if wep == wepiter || bwep == wepiter
				{
					xx += 1;
					yy -= 2;
					col = c_white;
				}
				if wep == wepiter
					selected = true;
				if bwep == wepiter
					bselected = true;
				imageIndex = 0;
			}
			else
			{
				var col = make_colour_rgb(100, 100, 100);	
			}
			if !isOverwriteWeapon && (selected || bselected)
			{
				if selected && bselected
				{
					shader_set(shdDrawLime);
					draw_sprite_ext(sprite,imageIndex,xx+2,yy+2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx+2,yy-2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-2,yy-2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-2,yy+2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx,yy-2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx,yy+2,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx+2,yy,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-2,yy,1,1,0,c_white,1);
					shader_set(shdDrawWhite);
					draw_sprite_ext(sprite,imageIndex,xx+1,yy+1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx+1,yy-1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-1,yy-1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-1,yy+1,1,1,0,c_white,1);
					shader_reset();
				}
				else 
				{
					if selected
						shader_set(shdDrawWhite);
					else
						shader_set(shdDrawLime);
					draw_sprite_ext(sprite,imageIndex,xx+1,yy+1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx+1,yy-1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-1,yy-1,1,1,0,c_white,1);
					draw_sprite_ext(sprite,imageIndex,xx-1,yy+1,1,1,0,c_white,1);
					shader_reset();
				}
				
			}
			draw_sprite_ext(sprite,imageIndex,xx,yy,1,1,0,col,1);
			//draw_rectangle(l,t,r,b,true);
		
	        wepx += 3 + spritewidth;
	        wepiter++;
	    } until (wepiter > transition || wepiter == UberCont.maxstartwep+1)
		var xx = __view_get( e__VW.XView, 0 )+xo+302 - 21;
		var yy = __view_get( e__VW.YView, 0 )+168//170;
		var wepScale = 2;
		var o = 10;
		if (UberCont.mouse__x > xx-o && UberCont.mouse__x < xx+o && UberCont.mouse__y > yy-o && UberCont.mouse__y < yy+o)
		{
			if mouse_check_button_pressed(mb_left)
			{
				wep = -1;
			}
			if mouse_check_button_pressed(mb_right)
			{
				bwep = -1;
			}
			wepScale = 2.5;
			hoverText = "RANDOM STARTING WEAPON";
		}
		var yyy = yy;
		
		if (wep == -1)
		{
			if (bwep == -1)
			{
				shader_set(shdDrawLime);
				draw_sprite_ext(sprRandomWeapon,0,xx+2,yyy+3,wepScale,wepScale,0,c_white,1);
				draw_sprite_ext(sprRandomWeapon,0,xx+2,yyy-1,wepScale,wepScale,0,c_white,1);
				draw_sprite_ext(sprRandomWeapon,0,xx-2,yyy-1,wepScale,wepScale,0,c_white,1);
				draw_sprite_ext(sprRandomWeapon,0,xx-2,yyy+3,wepScale,wepScale,0,c_white,1);
			}
			shader_set(shdDrawWhite);
			draw_sprite_ext(sprRandomWeapon,0,xx+1,yyy+2,wepScale,wepScale,0,c_white,1);
			draw_sprite_ext(sprRandomWeapon,0,xx+1,yyy,wepScale,wepScale,0,c_white,1);
			draw_sprite_ext(sprRandomWeapon,0,xx-1,yyy,wepScale,wepScale,0,c_white,1);
			draw_sprite_ext(sprRandomWeapon,0,xx-1,yyy+2,wepScale,wepScale,0,c_white,1);
			shader_reset();
			draw_sprite_ext(sprRandomWeapon,0,xx,yyy+1,wepScale,wepScale,0,c_white,1);
		}
		else if (bwep == -1)
		{
			shader_set(shdDrawWhite);
			draw_sprite_ext(sprRandomWeapon,0,xx+1,yyy+2,wepScale,wepScale,0,c_lime,1);
			draw_sprite_ext(sprRandomWeapon,0,xx+1,yyy,wepScale,wepScale,0,c_lime,1);
			draw_sprite_ext(sprRandomWeapon,0,xx-1,yyy,wepScale,wepScale,0,c_lime,1);
			draw_sprite_ext(sprRandomWeapon,0,xx-1,yyy+2,wepScale,wepScale,0,c_lime,1);
			shader_reset();
			draw_sprite_ext(sprRandomWeapon,0,xx,yyy+1,wepScale,wepScale,0,c_lime,1);
		}
		else
		{
			//draw_sprite_ext(sprRandomWeaponOutline,0,xx,yy,wepScale,wepScale,0,make_colour_rgb(150, 150, 150),1);
			draw_sprite_ext(sprRandomWeapon,0,xx,yyy+1,wepScale,wepScale,0,make_colour_rgb(150, 150, 150),1);
		}
		var xx = __view_get( e__VW.XView, 0 )+xo+302;
		var yy = __view_get( e__VW.YView, 0 )+168//170;
		var o = 10;
		var crownScale = 2;
		if UberCont.ctot_all_crowns_taken[Menu.race] > 0
		{
			if (UberCont.mouse__x > xx-o && UberCont.mouse__x < xx+o && UberCont.mouse__y > yy-o && UberCont.mouse__y < yy+o)
			{
				if mouse_check_button_pressed(mb_left)
				{
					UberCont.crown_start[Menu.race] = !UberCont.crown_start[Menu.race];
				}
				crownScale = 2.5;
				hoverText = "CROWN START";
			}
			var yyy = yy + 1;
			if (UberCont.crown_start[Menu.race])
			{
				shader_set(shdDrawWhite);
				draw_sprite_ext(sprLoadoutCrown,0,xx+1,yyy+2,crownScale,crownScale,0,c_white,1);
				draw_sprite_ext(sprLoadoutCrown,0,xx+1,yyy,crownScale,crownScale,0,c_white,1);
				draw_sprite_ext(sprLoadoutCrown,0,xx-1,yyy,crownScale,crownScale,0,c_white,1);
				draw_sprite_ext(sprLoadoutCrown,0,xx-1,yyy+2,crownScale,crownScale,0,c_white,1);
				shader_reset();
				draw_sprite_ext(sprLoadoutCrown,0,xx,yyy+1,crownScale,crownScale,0,c_white,1);
			}
			else
			{
				//draw_sprite_ext(sprLoadoutCrownOutline,0,xx,yy,crownScale,crownScale,0,make_colour_rgb(150, 150, 150),1);
				draw_sprite_ext(sprLoadoutCrown,0,xx,yyy+1,crownScale,crownScale,0,make_colour_rgb(150, 150, 150),1);
			}
		}
		else
		{
			//CROWN LOCKED
			draw_sprite_ext(sprLoadoutCrown,1,xx,yy,1.5,1.5,0,c_white,1);
			//draw_sprite_ext(sprLocked,0,xx,yy,0.75,0.75,0,c_white,1);
		}
		var dwx = sx + doubleWeaponOffset;
		var dwy = __view_get( e__VW.YView, 0 )+64
		var ds = 1;
		var col = make_colour_rgb(150, 150, 150)
		if UberCont.secondary_start_wep[race]
		{
			if (UberCont.mouse__x > dwx - 6 && UberCont.mouse__x < dwx + 6 && UberCont.mouse__y > dwy - 12 && UberCont.mouse__y < dwy + 12)
			{
				ds = 1.5;
				hoverText = "[RMB] TO SELECT A SECONDARY";
				if mouse_check_button_pressed(mb_left) {
					snd_play_2d(sndClick);
					if bwep != -2
					{
						prevbwep = bwep;
						bwep = -2;
					}
					else
					{
						bwep = prevbwep;	
					}
				}
			}
			if bwep != -2
			{
				col = c_white;
				shader_set(shdDrawLime);
				draw_sprite_ext(sprDoubleWeapon,0,dwx+1,dwy+1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx+1,dwy-1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx-1,dwy-1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx-1,dwy+1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx,dwy-1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx,dwy+1,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx - 1,dwy,ds,ds,0,c_white,1);
				draw_sprite_ext(sprDoubleWeapon,0,dwx + 1,dwy,ds,ds,0,c_white,1);
				shader_reset();
			}
			draw_sprite_ext(sprDoubleWeapon,0,dwx,dwy,ds,ds,0,col,ds);
		}
		else
		{
			draw_sprite_ext(sprDoubleWeapon,1,dwx,dwy,ds,ds,0,c_white,ds);
		}

		draw_sprite_ext(sprSkinSelect,0,sx + 32,__view_get( e__VW.YView, 0 )+66,scale,scale,0,c_white,scale-0.1);
		draw_set_valign(fa_bottom)
		
		//SKIN
		if skin=1 && UberCont.race_bskin[race]=1
		{//you have this one
			drawMenuBSkin(skin,race,c_white);
		}
		else if skin = 1
		{//you DONT have this one
			drawMenuBSkin(skin,race,c_black);
		}
		else if skin=2 && UberCont.race_cskin[race]=1
		{//you have this one
			drawMenuBSkin(skin,race,c_white);
		}
		else if skin = 2
		{//you DONT have this one
			drawMenuBSkin(skin,race,c_black);
		}
		else
		{
			drawMenuBSkin(skin,race,c_white);
		}
		
		
		//VIEW ULTRAS
		draw_sprite_ext(sprUltraInfo,0,sx + ultraOffset,__view_get( e__VW.YView, 0 )+64,ultraScale,ultraScale,0,c_white,ultraScale-0.1);
	}
	else if !ultraOpen
	{
		time -= 0.3;
		if time < 0
			time = 0;
		weaponTransition -= 0.3;
		if weaponTransition < 0
			weaponTransition = 0;
		draw_sprite(sprSplash,0,
		lerp(__view_get( e__VW.XView, 0 )+xo+77+243,__view_get( e__VW.XView, 0 )+xo+77,time),
		__view_get( e__VW.YView, 0 )+49)
		var xx = __view_get( e__VW.XView, 0 )+xo+304;
		var yy = __view_get( e__VW.YView, 0 )+174;
		draw_sprite(sprMutationSplatBright,3,xx+24,sply+44);
		yy -= 5;
		var scl = 1.5;
		var renderAny = true;
		if (UberCont.crown_start[Menu.race])
			draw_sprite_ext(sprLoadoutCrown,0,xx,yy + 2,2,2,0,c_white,1);
		if (isOverwriteWeapon && UberCont.wep_found[Menu.race,UberCont.opt_gm1wep])
		{
			if (UberCont.opt_gm1wep == 0)
			{
				var spr = sprAnyRandomWeapon;
				scl = 2;
			}
			else
			{
				var spr = wep_sprt[UberCont.opt_gm1wep];
			}
		}
		else if wep == -1
		{
			var spr = sprRandomWeapon;
			scl = 2;
			yy += 2;
		}
		else
		{
			renderAny = false;
			//var spr = wep_sprt[UberCont.start_wep[wep]];
			//var sprw = (sprite_get_xoffset(sprStartingWeapons)*scl) - (sprite_get_width(sprStartingWeapons)*scl);
			var spriteIndex = wep;
			var col = c_white;
			var am = 1;
			var wepAngle = 0;
			var wepPortraitScale = 1;
			if bwep > -1
			{
				col = c_gray;
				spriteIndex = bwep;
				am = 2;
				yy -= 22;
				xx += 24;
				wepAngle = -10;
				wepPortraitScale = 0.75;
			}
			repeat(am)//IF STARTING WEAPON UNLOCKED
			{
				if spriteIndex == 0
				{
					var uniqueStartingWeapons = 43;
					if race == 6 || race == 12
						spriteIndex = uniqueStartingWeapons;//YC YV
					else if race == 9
						spriteIndex = uniqueStartingWeapons + 1;//CHICKEN
					else if race == 11
						spriteIndex = uniqueStartingWeapons + 2;//HUNTER
					else if race == 13
						spriteIndex = uniqueStartingWeapons + 3;//Sheep
					else if race == 27
						spriteIndex = uniqueStartingWeapons + 4;//Hands
					else if race == 14
						spriteIndex = uniqueStartingWeapons + 5;//Panda
					else if race == 15
						spriteIndex = uniqueStartingWeapons + 6;//Atom
					else if race == 16
						spriteIndex = uniqueStartingWeapons + 7;//Viking
					else if race == 18 || race == 19
						spriteIndex = uniqueStartingWeapons + 8;//Angel skeleton
					else if race == 20
						spriteIndex = uniqueStartingWeapons + 9;//Hog
					else if race == 22
						spriteIndex = uniqueStartingWeapons + 10;//Rogue
					else if race == 23
						spriteIndex = uniqueStartingWeapons + 11;//Frog
					else if race == 24
						spriteIndex = uniqueStartingWeapons + 12;//Elementor
					else if race == 26
						spriteIndex = uniqueStartingWeapons + 13;//Humphry
					else if race == 28
						spriteIndex = uniqueStartingWeapons + 14;//Thief
					else if race == 29
						spriteIndex = uniqueStartingWeapons + 15;//No Thing
				}
				draw_sprite_ext(sprStartingWeapons,spriteIndex,xx - 48,yy- 2,wepPortraitScale*-1,wepPortraitScale,wepAngle,col,1);
				if bwep > -1
				{
					spriteIndex = wep;
					xx -= 24;
					yy += 22;
					col = c_white;
					wepAngle = 0;
					wepPortraitScale = 1;
				}
			}
		}
		//IF SECONDARY STARTING UNLOCKED
		if (renderAny)
		{
			var sprw = (sprite_get_xoffset(spr)*scl) - (sprite_get_width(spr)*scl);
			draw_sprite_ext(spr,0,xx+sprw-8 + 24,yy-2 - 22,scl,scl,0,c_ltgray,1);
		}
		if (bwep == -1)
		{
			var sprw = (sprite_get_xoffset(sprRandomWeapon)*scl) - (sprite_get_width(sprRandomWeapon)*scl);
			draw_sprite_ext(sprRandomWeapon,0,xx+sprw-8,yy-2,scl,scl,0,c_white,1);
		}
		
	}
    draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+xo+300,
	lerp(__view_get( e__VW.YView, 0 ),__view_get( e__VW.YView, 0 )+arrowOpenerY,newMenuTime),wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
}
else
{
	newMenuTime -= 0.3;
	if newMenuTime < 0
		newMenuTime = 0;	
}
if hoverText != ""
{
	var str = hoverText
	if str == ""
		str = "UNARMED";
	draw_set_halign(fa_center);
	draw_set_valign(fa_bottom);
	var xx = min(UberCont.mouse__x,camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - (string_width(str)*0.5) - 1);
	var yy = max(UberCont.mouse__y - 10, __view_get( e__VW.YView, 0 )+64);
	var col = make_colour_rgb(59,46,66);
	draw_sprite(sprLoadoutHoverArrow,0,UberCont.mouse__x,yy);
	draw_rectangle_colour_curved(
	xx - (string_width(str)*0.5) - 2,
	yy - string_height(str) - 2,
	xx + (string_width(str)*0.5) + 1,
	yy + 1,
	col);
	draw_text_colour(
	xx + 1,
	yy,str,c_black,c_black,c_black,c_black,1);
	draw_text_colour(
	xx + 1,
	yy + 1,str,c_black,c_black,c_black,c_black,1);
	draw_text(
	xx,
	yy,str);
	draw_set_halign(fa_left);
	draw_set_valign(fa_top);
}