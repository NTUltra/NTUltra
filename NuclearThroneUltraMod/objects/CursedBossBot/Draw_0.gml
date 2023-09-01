/// @description crazy prefire
if alarm[3] > 0
{
	var al = array_length(laserTell);
	for (var i = 0; i < al; i++)
	{
		var xx = laserTell[i][0];
		var yy = laserTell[i][1];
		var lasx = xx
		var lasy = yy
		var lasd = 0
		do {lasd += 1 lasx += lengthdir_x(2,wallDir) lasy += lengthdir_y(2,wallDir)}
		until position_meeting(lasx,lasy,Wall) or lasd > 1000
		draw_sprite_ext(sprLaserSight,-1,xx,yy,point_distance(xx,yy,lasx,lasy)*0.5+2,1,wallDir,c_white,1)
	}
}
// Inherit the parent event
event_inherited();

