if alarm[3]<6&&alarm[3]>0//draw a line
{

lasx = x
lasy = y
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,gunangle) lasy += lengthdir_y(2,gunangle)}
until position_meeting(lasx,lasy,Wall) or lasd > 1000

draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,gunangle,c_white,1)

}
if alarm[5] > 0
{
	var d = wazerDirection - wazerOffset;
	lasx = x
	lasy = y
	lasd = 0
	do {lasd += 2 lasx += lengthdir_x(4,d) lasy += lengthdir_y(4,d)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000

	draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,d,c_white,1)
	
		var d = wazerDirection - wazerOffset * 0.5;
	lasx = x
	lasy = y
	lasd = 0
	do {lasd += 2 lasx += lengthdir_x(4,d) lasy += lengthdir_y(4,d)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000

	draw_sprite_ext(sprLaserSight,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,1,d,c_white,1)

}

draw_sprite_ext(sprite_index,-1,x,y,right,1,image_angle,c_white,1)

