/// @description Draw prepper
if alarm[1] < 13
{
	var yy = y;
	var lasx = x
	var lasy = yy
	var lasd = 0
	do {lasd += 2 lasy += 2}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSight,-1,x,yy,1,lasd+1,0,c_white,1)
}
draw_self();