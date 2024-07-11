/// @description Draw a sight
draw_self();
if instance_exists(Player)
{
	var lasd = 0
	var aimDir = point_direction(x,y,Player.x,Player.y);
	var sx = x + lengthdir_x(8,aimDir);
	var sy = y + lengthdir_y(8,aimDir);
	var lasx = sx
	var lasy = sy
	do {lasd += 1 lasx += lengthdir_x(2,aimDir) lasy += lengthdir_y(2,aimDir)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightPlayer,-1,sx,sy,point_distance(sx,sy,lasx,lasy)/2+2,image_yscale,aimDir,c_white,1)
}