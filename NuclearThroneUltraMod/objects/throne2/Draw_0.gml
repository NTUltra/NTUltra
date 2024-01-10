/// @description Tell Laser
draw_self();
if alarm[7] > 0
{
	var spr = sprLaserSightThrone;
	if isInverted
		spr = sprLaserSightInvThrone;
	draw_sprite_ext(spr,-1,x-1,y + 44,3,300,0,c_white,1)
}