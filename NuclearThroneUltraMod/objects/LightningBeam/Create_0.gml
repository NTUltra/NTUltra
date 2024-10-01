/// @description Init
event_inherited();
depth = -999;
radius = 32;
lightWidth = 12;
lightWidthTop = 4;
cAlpha = 1;
disappear = false;
dmg = 6;
damageTicks = 2;
if instance_exists(Player) && Player.skill_got[17]
{
	dmg = 7 + Player.betterlaserbrain;
	damageTicks += 1;
}
team = 2;
atMax = false;
duration = 50;
angle = 0;
scale = 1;
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var xx = x - vx;
var yy = y - vy;
var xxx = camera_get_view_width(view_camera[0])*0.5 + lightWidthTop;
var yyy = -256
angle = point_direction(xx,yy, xxx,yyy);
image_speed = 0.4;
alarm[1] = 1;
alarm[0] = 5;