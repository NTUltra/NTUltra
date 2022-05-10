if alarm[5] > 0
{
	var lasx = x
	var lasy = y
	var lasd = 0
	var dir = gunangle - lineOfFireOffset;
	do {lasd += 1 lasx += lengthdir_x(2,dir) lasy += lengthdir_y(2,dir)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000

	draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,dir,c_white,1)

	lasx = x
	lasy = y
	lasd = 0
	dir = gunangle + lineOfFireOffset;
	do {lasd += 1 lasx += lengthdir_x(2,dir) lasy += lengthdir_y(2,dir)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000

	draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,dir,c_white,1)
}


draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)

