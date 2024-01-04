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
	var lasx = x
	var lasy = y + 64;
	var lasd = 0
	do {lasd += 1 lasy += 2}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightThrone,-1,x-16,y,1,lasy+1,0,c_white,1)
	draw_sprite_ext(sprLaserSightThrone,-1,x+16,y,1,lasy+1,0,c_white,1)
	draw_sprite_ext(sprLaserSightThrone,-1,x,y,1,lasy+1,0,c_white,1)
}