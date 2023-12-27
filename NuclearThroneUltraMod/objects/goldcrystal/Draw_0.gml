/// @description Draw
if alarm[2] > 6
{
	var lasx = x
	var lasy = y
	var lasd = 0
	do {lasd += 1 lasx += lengthdir_x(2,gunangle) lasy += lengthdir_y(2,gunangle)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightCrystal,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,gunangle,c_white,1)
	lasx = x
	lasy = y
	lasd = 0
	do {lasd += 1 lasx += lengthdir_x(2,gunangle + 90) lasy += lengthdir_y(2,gunangle + 90)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightCrystal,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,gunangle + 90,c_white,1)
	lasx = x
	lasy = y
	lasd = 0
	do {lasd += 1 lasx += lengthdir_x(2,gunangle + 180) lasy += lengthdir_y(2,gunangle + 180)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightCrystal,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,gunangle + 180,c_white,1)
	lasx = x
	lasy = y
	lasd = 0
	do {lasd += 1 lasx += lengthdir_x(2,gunangle+270) lasy += lengthdir_y(2,gunangle+270)}
	until position_meeting(lasx,lasy,Wall) or lasd > 1000
	draw_sprite_ext(sprLaserSightCrystal,-1,x,y,point_distance(x,y,lasx,lasy)*0.5+2,1,gunangle+270,c_white,1)
}
draw_sprite_ext(sprite_index,-1,x,y,right,1,0,c_white,1)





