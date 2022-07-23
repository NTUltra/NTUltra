/// @description Draw the gun
draw_self();
var xx = x + lengthdir_x(16,image_angle) - lengthdir_x(28,angle);
var yy = y + lengthdir_y(16,image_angle) - lengthdir_y(28,angle);
draw_sprite_ext(wepSpr,0,xx,yy,1,1,angle,c_white,1);
angle -= rot;