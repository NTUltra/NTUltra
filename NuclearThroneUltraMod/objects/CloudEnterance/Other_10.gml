/// @description LIGHTS
var vx = camera_get_view_x(view_camera[0])
var vy = camera_get_view_y(view_camera[0])

var xx = x - vx;
var yy = y - vy;

//gpu_set_blendmode(bm_add);
var len = 999;
//var topw = 12;
var ang = 90 + lightAngle;
draw_set_alpha(cAlpha);
var xxx = xx + lengthdir_x(48,ang + 30);
xx = xx + lengthdir_x(48,ang);
//var xw = lengthdir_x(width,ang+90);
var yyy = yy + lengthdir_y(48,ang + 30);
yy = yy + lengthdir_y(48,ang);
//var yw = lengthdir_y(width,ang+90);

draw_triangle(xx,yy,xxx, yyy,xx + lengthdir_x(len,ang),yy + lengthdir_y(len,ang),false);
draw_triangle(xx,yy,xx + lengthdir_x(len,ang),yy + lengthdir_y(len,ang),xx + lengthdir_x(len,ang),yy + lengthdir_y(len,ang),false);
draw_set_alpha(1);
//gpu_set_blendmode(bm_normal);