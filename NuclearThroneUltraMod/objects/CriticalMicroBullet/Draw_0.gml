/// @description Draw
if UberCont.normalGameSpeed == 60
	t += timeIncrease*0.5;
else
	t += timeIncrease;
lp = clamp(t-0.5,0,1);

draw_circle_colour(
x,
y,
max(0,0.75 + width - lp),
col,col,false);

draw_set_alpha(lerp(1,0.5,lp));

draw_line_width_colour(
lerp(xstart,x,lp),
lerp(ystart,y,lp),
x,y,max(0,width - lp),
col,col);
draw_line_width_colour(
lerp(xstart,x,lp),
lerp(ystart,y,lp),
x,y,max(0,width - lp - borderWidth),
middleColour,middleColour);

draw_set_alpha(1);

draw_circle_colour(
x,
y,
max(0,0.75 + width - lp - borderWidth),
middleColour,middleColour,false);