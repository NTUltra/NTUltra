/// @description Draw
if UberCont.normalGameSpeed == 60
	t += 0.125;
else
	t += 0.25;
lp = clamp(t-0.5,0,1);
draw_set_alpha(lerp(1,0.5,lp));
draw_line_width_colour(
lerp(xstart,x,lp),
lerp(ystart,y,lp),
x,y,2 - lp,
col,col);
draw_set_alpha(1);