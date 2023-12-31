/// @description Draw  sight tell

// Inherit the parent event
event_inherited();

if alarm[2] > 0
{
	var ang = originalAngle + 180;
	var lasx = x
	var lasy = y
	var lasd = 0
	do {lasd += 2 lasx += lengthdir_x(4,ang) lasy += lengthdir_y(4,ang)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprCurseLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,ang,c_white,1)
}