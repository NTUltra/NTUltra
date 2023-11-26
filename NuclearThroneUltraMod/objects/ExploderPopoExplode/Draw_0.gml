/// @description Draw
var t = min(1,(1+alarm[0])/maxTime);
var d = lerp(distance,0,t);
var r = 12;
if t > 0.5
	r -= lerp(0,10,t * 2);
else
	r -= lerp(10,0,(t - 0.5) * 2);
	
draw_triangle_colour(x,y,targetX,targetY,
x+lengthdir_x(d,dir)+lengthdir_x(r,dir+90),
y+lengthdir_y(d,dir)+lengthdir_y(r,dir+90),
col,col,col,false);
draw_triangle_colour(x,y,targetX,targetY,
x+lengthdir_x(d,dir)+lengthdir_x(r,dir-90),
y+lengthdir_y(d,dir)+lengthdir_y(r,dir-90),
col,col,col,false);