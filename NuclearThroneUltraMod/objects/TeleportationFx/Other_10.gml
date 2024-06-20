/// @description Init distance scale
totalLength = point_distance(x,y,targetX,targetY);
direction = point_direction(x,y,targetX,targetY);
repeats = max(1,totalLength/sprite_width) * 2;
minRepeat = ceil(repeats*0.25);
length = (sprite_width + sprite_height) * 0.25;