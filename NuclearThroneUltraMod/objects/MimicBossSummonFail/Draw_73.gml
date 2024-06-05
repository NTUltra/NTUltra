/// @description LIGHTS
gpu_set_blendmode(bm_add);
var len = 999;
var w = 12;
//var topw = 12;
var ang = 90 - lightAngle;
draw_set_alpha(0.4);
draw_triangle(x,y + w,x - w, y,x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),false);
draw_triangle(x,y + w,x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),false);
ang = 90 + lightAngle
draw_triangle(x,y + w,x + w, y,x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),false);
draw_triangle(x,y + w,x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),x + lengthdir_x(len,ang),y + lengthdir_y(len,ang),false);
draw_set_alpha(1);
if lightAngle > 0
{
	if UberCont.normalGameSpeed == 60
		lightAngle -= 0.5;
	else
		lightAngle -= 1;
} else if alarm[1] < 1
{
	lightAngle = 0;
	alarm[1] = 30;
}
gpu_set_blendmode(bm_normal);