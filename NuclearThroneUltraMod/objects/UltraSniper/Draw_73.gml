/// @description On top of walls
if gonnafire = 1
{
lasx = x
lasy = y
lasd = 0
do {lasd += 1 lasx += lengthdir_x(2,gunangle) lasy += lengthdir_y(2,gunangle)}
until/*osition_meeting(lasx,lasy,Wall) or */lasd > 1000

draw_sprite_ext(sprLaserSightThroughWalls,-1,x,y,point_distance(x,y,lasx,lasy)/2+2,3,gunangle,c_white,1)
}