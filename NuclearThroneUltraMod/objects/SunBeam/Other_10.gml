/// @description LIGHT
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var xx = x - vx;
var yy = y - vy;
var xxx = camera_get_view_width(view_camera[0])*0.5 + lightWidthTop;
var yyy = -256
draw_set_alpha(cAlpha);
draw_triangle(xxx,yyy,xxx + lightWidthTop,yyy,xx + lightWidth,yy,false);
draw_triangle(xxx,yyy,xx + lightWidth,yy,xx - lightWidth,yy,false);
draw_set_alpha(1);