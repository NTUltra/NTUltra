/// @description Boss intro
if alarm[0] == 0
	exit;
if !surface_exists(surf) || surf == -1
{
    surf = surface_create(camera_get_view_width(view_camera[0]),camera_get_view_height(view_camera[0]));
}
surface_set_target(surf);
draw_clear_alpha(c_black,0.6);

var tx = nx;
var ty = ny;
var yy = y;
var t = 1;
var h = 16;
if alarm[0] > introDuration - shiftInDuration
{
	t = clamp((alarm[0] - introDuration + shiftInDuration)/shiftInDuration,0,1);
	ty = lerp(ny, ny - 64, clamp(t,0,1));
	yy = lerp(y, y + 240, clamp(t*0.5,0,1));
	x = lerp(xMoveStart, xIntro, t);
	lx = lerp(lxMoveStart, xIntro, t);
	tx = lerp(nx, -xIntro, t);
}
else if alarm[0] < shiftInDuration
{
	t = clamp(alarm[0]/shiftInDuration,0,1)
	ty = lerp(ny - 64, ny, clamp(t*2,0,1));
	yy = lerp(y + 240, y, clamp(t*3,0,1));
	x = lerp(xOutro,xMoveStart,t);
	lx = lerp(xOutro,lxMoveStart,t);
	tx = lerp(-xOutro, nx, t);
}
else
{
	xMoveStart = x;
	lxMoveStart = lx;
}
var left = camera_get_view_x(0);
var top = camera_get_view_y(0);
var right = left + camera_get_view_width(0);
var bottom = top + camera_get_view_height(0);
draw_rectangle_colour(left,top,right,top + h,c_black,c_black,c_black,c_black,false);
draw_rectangle_colour(left,bottom,right,bottom - h,c_black,c_black,c_black,c_black,false);
draw_sprite_ext(layerSprite,image_index,lx,yy,1,1,image_angle,c_white,1);
draw_sprite_ext(sprite_index,image_index,x,yy,1,1,image_angle,c_white,1);

draw_set_valign(fa_top);
draw_set_font(fntB);
draw_set_colour(c_black);

draw_text_ext(tx + 2,ty,name,36,320);
draw_text_ext(tx - 1,ty,name,36,320);
draw_text_ext(tx,ty + 3,name,36,320);
draw_text_ext(tx,ty - 1,name,36,320);
draw_text_ext(tx - 1,ty + 3,name,36,320);
draw_text_ext(tx - 1,ty - 1,name,36,320);
draw_text_ext(tx + 2,ty + 3,name,36,320);
draw_text_ext(tx + 2,ty - 1,name,36,320);
draw_set_colour(c_white);
draw_text_ext(tx,ty,name,36,320);
//draw_text(xx + vw*0.5,yy + vh * 0.5,name);
draw_set_font(fntM);
//if alarm[0] < introDuration - shiftInDuration
//{
	if room_speed == 60
	{
		x += xShift*accelerate * 0.5;
		lx += xShift*accelerate * 0.25;
		y += yShift*accelerate * 0.5;
		nx -= 1*accelerate * 0.5;
		if accelerate < 2
			accelerate += 0.02;
		else
			accelerate = 1;
	}
	else
	{
		x += xShift*accelerate;
		lx -= xShift*accelerate * 0.5;
		y += yShift*accelerate;
		nx -= 1*accelerate;
		if accelerate < 2
			accelerate += 0.04;
		else
			accelerate = 1;
	}
surface_reset_target();