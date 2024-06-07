/// @description Big lasersight through walls
var dir = point_direction(originX,originY,x,y);
var dis = lerp(0,(point_distance(originX,originY,x,y) * 0.5) + 1,min(1,time));
draw_sprite_ext(sprLaserSightThroughWalls,-1,originX,originY,dis,1,dir,c_white,1);
var sht = lerp(0,sh,clamp(time-1,0,1));
draw_sprite_ext(sprLaserSightThroughWallsScreen,-1,x,y,sht,1,image_angle,c_white,1);
