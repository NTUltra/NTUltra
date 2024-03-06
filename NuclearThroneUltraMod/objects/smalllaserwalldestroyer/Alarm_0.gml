/// @description ALSO DESTROY WALL!
event_inherited();
image_xscale = 1;
while place_meeting(x,y,Wall) && point_distance(x,y,xstart,ystart) > 8
{
	x += lengthdir_x(1,image_angle+180);
	y += lengthdir_y(1,image_angle+180);
}
image_xscale = max(2,point_distance(x,y,xstart,ystart)*0.5);
penetration ++;
if penetration % 3 != 0
	instance_create(x,y,WallBreakWallOnly);