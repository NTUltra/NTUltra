/// @description TeleportFX
var xx = targetX;
var yy = targetY;
var t = (alarm[0] / 6) + 1;
/*
draw_set_alpha(0.5);
var t = alarm[0] / 6;
var l = clamp(0,totalLength,lerp(totalLength,0,t));
draw_triangle_colour(x+sprite_width*0.25,y+sprite_height*0.25,x-sprite_width*0.25,y-sprite_height*0.25,
x + lengthdir_x(l,direction),
y + lengthdir_y(l,direction),
c_purple,c_purple,c_purple,false);
draw_set_alpha(1);
*/
repeat(clamp(minRepeat,repeats+1,lerp(minRepeat,repeats + 1,t)))
{
	draw_sprite_ext(sprite_index,image_index,xx,yy,image_xscale,image_yscale,image_angle,c_purple,0.5);
	xx -= lengthdir_x(length,direction);
	yy -= lengthdir_y(length,direction);
}
