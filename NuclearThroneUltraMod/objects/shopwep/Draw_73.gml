draw_self();
//draw_sprite(wep_sprt[wep],0,x+xx-6,y+yy);
var spr = wep_sprt[wep];
var h = sprite_get_height(spr);
var wid = sprite_get_width(spr);
var xxx = x+xx-6;
var yyy = y+yy;
var wwep = wep;
var pcc = queueshot;
var pci = 0;
var pcsw = (sprite_get_width(spr))*0.5;
var fillw = 2+sprite_get_width(spr);
var puffColour = make_colour_rgb(250,171,0);//make_colour_rgb(178,122,0);
var puffA = 0.8
var loadColour = c_ltgray//make_colour_rgb(255,225,200);//make_colour_rgb(255,174,0);
var loadA = 1;
var loadedColour = c_gray//make_colour_rgb(102,69,0);//make_colour_rgb(127,87,0);
if reload < 0 && wep_load[wwep] != 0
{
	pci = reload/wep_load[wwep]
	pci = 1+pci;
	pci = pci-floor(pci)
}
if reload > wep_load[wwep]
{
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy + 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy - 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy + 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy + 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy - 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy - 1,c_red,1)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx + 1,yyy + 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx + 1,yyy,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx,yyy + 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx - 1,yyy - 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx - 1,yyy,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(reload,1-(wep_load[wwep]/reload))),h,xxx,yyy - 1,loadColour,loadA)
	draw_sprite_part_smart(spr,0,0,0,wid,h,xxx,yyy,c_white,1)
}
else if reload > 0
{
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy + 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy + 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy + 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx - 1,yyy + 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx + 1,yyy - 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx + 1,yyy + 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx + 1,yyy,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx,yyy + 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx - 1,yyy - 1,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx - 1,yyy,loadColour,loadA)
	draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-(reload/wep_load[wwep]))),h,xxx,yyy - 1,loadColour,loadA)
	draw_sprite_part_smart(spr,0,0,0,wid,h,xxx,yyy,c_white,1)
}
else if reload != 0
{
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy + 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy + 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy - 1,loadedColour,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy + 1,loadedColour,1)
	if pcc == 2
	{
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy - 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy - 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy - 1,puffColour,puffA)

	}
	else if pcc == 1
	{
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx - 1,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx + 1,yyy - 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx + 1,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx + 1,yyy,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx,yyy + 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx - 1,yyy - 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx - 1,yyy,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,pcsw,h,xxx,yyy - 1,puffColour,puffA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy - 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy - 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx,yyy - 1,loadColour,loadA)
	}
	else
	{
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy - 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx,yyy + 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx + 1,yyy,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy - 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx,yyy - 1,loadColour,loadA)
		draw_sprite_part_smart(spr,1,0,0,max(0,fillw*min(wep_load[wwep],1-pci)),h,xxx - 1,yyy,loadColour,loadA)

	}
	draw_sprite_part_smart(spr,0,0,0,wid,h,xxx,yyy,c_white,1)
}
else
{
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy + 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy - 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy + 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy - 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy + 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx + 1,yyy,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx,yyy - 1,c_white,1)
	draw_sprite_part_smart(spr,1,0,0,wid,h,xxx - 1,yyy,c_white,1)
	draw_sprite_part_smart(spr,0,0,0,wid,h,xxx,yyy,c_white,1)
}
draw_set_color(c_dkgray)
draw_set_valign(fa_bottom)
draw_set_halign(fa_right)


if place_meeting(x,y,ShopSelector) && wep != 0
{
	depth = selected;

	drawx = x
	drawy = y

	if drawx-string_width(string_hash_to_newline(txt))/2-2 < __view_get( e__VW.XView, 0 )+2
	drawx = __view_get( e__VW.XView, 0 )+4+string_width(string_hash_to_newline(txt))/2

	if drawx+string_width(string_hash_to_newline(txt))/2+2> __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-2
	drawx = __view_get( e__VW.XView, 0 )+__view_get( e__VW.WView, 0 )-4-string_width(string_hash_to_newline(txt))/2

	draw_set_color(c_black)
	draw_set_alpha(0.8)
	draw_rectangle(drawx-string_width(string_hash_to_newline(txt))/2-2,drawy-17-string_height(string_hash_to_newline(txt)),drawx+string_width(string_hash_to_newline(txt))/2+2,drawy-12,0)
	draw_set_alpha(1)


	draw_sprite_ext(sprMenuPointer,0,x,drawy-12,1,1,0,c_white,0.8)

	draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-13,string_hash_to_newline(string(txt)))
	draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-13,string_hash_to_newline(string(txt)))
	draw_text(drawx+string_width(string_hash_to_newline(txt))/2+1,drawy-14,string_hash_to_newline(string(txt)))
	draw_set_color(c_silver)
	draw_text(drawx+string_width(string_hash_to_newline(txt))/2,drawy-14,string_hash_to_newline(string(txt)))
	draw_set_color(c_white)
	
	var dyy = drawy-24
	var txtt = wep_area[wep];
	draw_set_color(c_black)
	draw_text(drawx + 7,dyy,string_hash_to_newline(string(txtt)))
	draw_text(drawx + 7+1,dyy,string_hash_to_newline(string(txtt)))
	draw_text(drawx + 7,dyy - 1,string_hash_to_newline(string(txtt)))
	draw_set_color(c_silver)
	draw_text(drawx + 7,dyy - 1,string_hash_to_newline(string(txtt)))
	draw_set_color(c_white)
	draw_sprite(sprWepTier,0,drawx - 14,dyy - 6);
	//draw_text(drawx+string_width(txt)/2,drawy-14-string_height(txt),string(skill_name[skill]))
}
else
{
	depth = unselected;	
}

