/// @description Draw  sight tell

// Inherit the parent event
event_inherited();

if alarm[3] > 0
{
	var ang = 0;
	var ang = 0;
	var angStep = 45;
	repeat(8) {
		var lasx = x
		var lasy = y
		var lasd = 0
		do {lasd += 1 lasx += lengthdir_x(2,ang) lasy += lengthdir_y(2,ang)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,ang,c_white,1)
		ang += angStep;
	}
}