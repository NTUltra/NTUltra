/// @description Legs
var am = 4;
var ys = 20;
var yy = y - (ys*am) + 20;
repeat (am)
{
	draw_sprite_ext(spr_leg,walkAnim,x+legXoffset,yy,image_xscale,1,0,c_white,1);
	yy += ys;
}
draw_sprite_ext(sprite_index,0,x,y,spriteXscale,1,0,c_white,1);

if alarm[4] > 0 || alarm[5] > 0
{
	var spr = sprLaserSightThrone;
	if isInverted
		spr = sprLaserSightInvThrone;
	var yy = y + 18;
	var lasx = x
	var lasy = yy
	var lasd = 0
	do {lasd += 2 lasy += 2}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(spr,-1,x-16,yy,1,lasd+1,0,c_white,1)
	draw_sprite_ext(spr,-1,x+16,yy,1,lasd+1,0,c_white,1)
	draw_sprite_ext(spr,-1,x,yy,1,lasd+1,0,c_white,1)
}