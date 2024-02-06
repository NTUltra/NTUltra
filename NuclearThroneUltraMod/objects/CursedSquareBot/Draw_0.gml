/// @description Draw  sight tell

// Inherit the parent event
event_inherited();
if alarm[2] > 0 && inRange
{
	var ang = originalAngle;
	repeat(4)
	{
		var lasx = x
		var lasy = y
		var lasd = 0
		do {lasd += 3 lasx += lengthdir_x(6,ang) lasy += lengthdir_y(6,ang)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprCurseLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,ang,c_white,1)
		ang += 90;
	}
}