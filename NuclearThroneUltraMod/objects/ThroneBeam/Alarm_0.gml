var xx = x + lengthdir_x(10000,image_angle-90);
var yy = y + lengthdir_y(10000,image_angle-90);
var hit = collision_line_point(x,y,xx,yy,Wall,false,false)
xEnd = hit[1];
yEnd = hit[2];
if hit[0] != noone && sprite_index == sprInvertedNothingBeamStretch
{
	instance_create(xEnd,yEnd,WallBreak);
	alarm[0] = 1;
}
image_yscale = (yEnd - y)/sprite_get_height(sprite_index)
/*
var dir;
dir = 0
do {x += lengthdir_x(2,image_angle) y += lengthdir_y(2,image_angle) dir += 1}
until (place_meeting(x,y,hitme) and dir > 12) or place_meeting(x,y,Wall) or dir > 160//160

alarm[0] = 2//8 //2 the preventing of getting stuck in walls!?

image_xscale = point_distance(x,y,xstart,ystart)*0.5
instance_create(x,y,Smoke)
//optimise  sleep(30);//the preventing of getting stuck in walls!?
*/