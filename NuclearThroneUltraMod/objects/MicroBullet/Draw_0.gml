/// @description Draw
if UberCont.normalGameSpeed == 60
	t += timeIncrease*0.5;
else
	t += timeIncrease;
lp = clamp(t-0.5,0,1);
draw_set_alpha(lerp(1,0.5,lp));
draw_line_width_colour(
lerp(xstart,x,lp),
lerp(ystart,y,lp),
x,y,width - lp,
col,col);
draw_line_width_colour(
lerp(xstart,x,lp),
lerp(ystart,y,lp),
x,y,width - lp - borderWidth,
middleColour,middleColour);


draw_set_alpha(1);