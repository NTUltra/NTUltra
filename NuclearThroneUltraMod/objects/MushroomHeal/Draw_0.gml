/// @description Draw
var t = min(1,(1+alarm[0])/maxTime);
var d = lerp(distance,0,t);
var r = 5;
if t > 0.5
	r -= clamp(lerp(0,4,t * 2),0,4);
else
	r -= clamp(lerp(4,0,(t - 0.5) * 2),0,4);
	
draw_triangle_colour(x,y,targetX,targetY,
x+lengthdir_x(d,dir)+lengthdir_x(r,dir+90),
y+lengthdir_y(d,dir)+lengthdir_y(r,dir+90),
c_red,c_red,c_red,false);
draw_triangle_colour(x,y,targetX,targetY,
x+lengthdir_x(d,dir)+lengthdir_x(r,dir-90),
y+lengthdir_y(d,dir)+lengthdir_y(r,dir-90),
c_red,c_red,c_red,false);