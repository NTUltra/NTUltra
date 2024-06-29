/// @description Draw open menu
if (hasNoMenuOpen() && race != 0)
{
	if (ultraOpen)
	{
		var xo = 0;
		if UberCont.opt_sideart == sprite_get_number(sprSideArt) + 1
			xo = 108;
		scrDrawUltraMenu(race, Menu.widescreen);
		draw_sprite_ext(sprLoadOutArrow,1,__view_get( e__VW.XView, 0 )+xo+300,__view_get( e__VW.YView, 0 )+arrowOpenerY,wepopenscale,wepopenscale,0,c_white,wepopenscale-0.1);
		draw_sprite_ext(sprUltraInfo,0,sx + ultraOffset,__view_get( e__VW.YView, 0 )+64,ultraScale,ultraScale,0,c_white,ultraScale-0.1);
	
	}
	else if wepmenuopen
	{
		var ly =__view_get( e__VW.YView, 0 ) + 66;
		var lx = sx + 16;
		//SKIN
		if skin=1 && UberCont.race_bskin[race]=1
		{//you have this one
			//draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("B"),c_white,c_white,c_white,c_white,1);
			drawMenuBSkin(skin,race,c_white);
		}
		else if skin = 1
		{//you DONT have this one
			//draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("B"),c_white,c_white,c_white,c_white,1);
			drawMenuBSkin(skin,race,c_black);
			if (scale > 1)
			{
				draw_sprite(sprLocked,0,lx - 32,ly);
				ly += 34;
				draw_set_halign(fa_right)
				draw_text_color(lx,ly+1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly+1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly - 1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly - 1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx + 1,ly - 1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly - 1,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly,string_hash_to_newline(race_bskin_lock[race]),c_white,c_white,c_white,c_white,1);
				draw_text_color(lx,ly+2,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly+2,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx + 1,ly+2,string_hash_to_newline(race_bskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly,string_hash_to_newline(race_bskin_lock[race]),c_white,c_white,c_white,c_white,1);
				draw_set_halign(fa_left)
			}
		}
		else if skin=2 && UberCont.race_cskin[race]=1
		{//you have this one
			//draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("C"),c_white,c_white,c_white,c_white,1);
			drawMenuBSkin(skin,race,c_white);
		}
		else if skin = 2
		{//you DONT have this one
			//draw_text_color(sx+1,__view_get( e__VW.YView, 0 )+67,string_hash_to_newline("C"),c_white,c_white,c_white,c_white,1);
			drawMenuBSkin(skin,race,c_black);
			if (scale > 1)
			{
				draw_sprite(sprLocked,0,lx - 32,ly);
				ly += 34;
				draw_set_halign(fa_right)
				draw_text_color(lx,ly+1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly+1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly - 1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly - 1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx + 1,ly - 1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly - 1,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly,string_hash_to_newline(race_cskin_lock[race]),c_white,c_white,c_white,c_white,1);
				draw_text_color(lx,ly+2,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx - 1,ly+2,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx + 1,ly+2,string_hash_to_newline(race_cskin_lock[race]),c_black,c_black,c_black,c_black,1);
				draw_text_color(lx,ly,string_hash_to_newline(race_cskin_lock[race]),c_white,c_white,c_white,c_white,1);
				draw_set_halign(fa_left)
			}
		}
		else
		{
			draw_set_halign(fa_left)
			drawMenuBSkin(skin,race,c_white);
		}	
	}
}