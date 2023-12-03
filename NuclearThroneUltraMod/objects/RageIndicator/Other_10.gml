/// @description Draw a big number
var is60fps = UberCont.normalGameSpeed == 60;
var xx = x - camera_get_view_x(view_camera[0]);
var yy = y - camera_get_view_y(view_camera[0]);
draw_sprite(sprite_index,image_index,xx,yy);
yy -= 24;
if instance_exists(Player)
	rageNumber = round(Player.rage);
var strRage = string_digits(rageNumber);
var step = 8//Sprite width + 2 for borders
var am = string_length(strRage);
xx = xx - step*(am*0.5);
if alarm[1] < 1
{
	if is60fps
		surfH -= 1;
	else
		surfH -= 2;
	if surfH < 1
	{
		instance_destroy();
	}
}
else if alarm[0] < 1
{
	if surfH < maxSurfH
	{
		surfH += 1;
		if is60fps
			surfH += 2;
		else
			surfH += 4;
	}
	else
	{
		surfH = maxSurfH;	
	}
}
if surfH < 1 || surfW < 1
	exit;
if !surface_exists(surf)
	surf = surface_create((surfW*am) + 2,surfH + 2);
else
	surface_resize(surf,(surfW*am) + 2,surfH + 2);
surface_set_target(surf);
draw_clear_alpha(c_black,0);
if surfH >= maxSurfH
{
	var cl = clamp(colTime,0,1);
	if is60fps
	{
		colTime += 0.125;
	}
	else
	{
		colTime += 0.25;
	}
	col = make_colour_rgb(
	lerp(255,240,cl),
	lerp(255,0,cl),
	lerp(255,0,cl));
}
var xxx = 1;
var yyy = 1;
for (var i = 0; i < am; i ++)
{
	var img = real(string_char_at(strRage,i + 1));
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx+1,yyy,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx-1,yyy,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx,yyy+1,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx,yyy-1,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx+1,yyy+1,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx-1,yyy+1,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx+1,yyy-1,1,1,0,c_black,1);
	draw_sprite_ext(sprDmgNumbersMedium,img,xxx-1,yyy-1,1,1,0,c_black,1);

	draw_sprite_ext(sprDmgNumbersMedium,img,xxx,yyy,1,1,0,col,1);
	xxx += step;
}
surface_reset_target();
draw_surface(surf,xx,yy);