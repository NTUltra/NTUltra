/// @description Draw curve
if followMouse
{
	var hit = collision_line_point(x,y,UberCont.mouse__x,UberCont.mouse__y,Wall,false,false);
	targetX = lerp(targetX,hit[1],accuracy);
	targetY = lerp(targetY,hit[2],accuracy);
}
else if myTarget != noone && instance_exists(myTarget)
{
	targetX = myTarget.x;
	targetY = myTarget.y;
}

draw_primitive_begin(pr_trianglestrip);
var dt = 1;
if UberCont.normalGameSpeed == 60
	dt = 0.5;
lerpTime += lerpIncrease * dt;
lerpTime = min(1,lerpTime);
var ls = round(lerpStart * 10)*0.1;
/*
var tx1 = lerp(x,offsetX,ls);
var tx2 = lerp(offsetX,targetX,ls);
var ty1 = lerp(y,offsetY,ls);
var ty2 = lerp(offsetY,targetY,ls);
var xx = lerp(tx1,tx2,ls);
var yy = lerp(ty1,ty2,ls);
*/
var curve = quadratic_curve(ls,x,y,offsetX,offsetY,targetX,targetY);
var xx = curve[0];
var yy = curve[1];
var xPrev = xx;
var yPrev = yy;
var wt;
var polygonWidth = widthScale;
var col = colour
var h = hue;
draw_set_colour(col);
draw_circle(xx,yy, max(1,polygonWidth - lerpStart), false);
for (var t = ls; t <= lerpTime; t += curveDetail)
{
	
	if t > 0.5
	{
		wt = (0.5*widthTimeScalar) - (((t - 0.5) * widthTimeScalar) * widthReturnScalar) 
	}
	else
	{
		wt = t * widthTimeScalar;
	}
	wt += minWidth;
	polygonWidth = widthScale * wt;
	xPrev = xx;
	yPrev = yy;
	curve = quadratic_curve(ls,x,y,offsetX,offsetY,targetX,targetY);
	xx = curve[0];
	yy = curve[1];
	var dir = point_direction(xPrev,yPrev,xx,yy);
	draw_vertex(xPrev + lengthdir_x(polygonWidth,dir + 90), yPrev + lengthdir_y(polygonWidth,dir + 90));
	draw_vertex(xPrev + lengthdir_x(polygonWidth,dir - 90), yPrev + lengthdir_y(polygonWidth,dir - 90));
	draw_vertex(xx + lengthdir_x(polygonWidth,dir + 90), yy + lengthdir_y(polygonWidth,dir + 90));
	draw_vertex(xx + lengthdir_x(polygonWidth,dir - 90), yy + lengthdir_y(polygonWidth,dir - 90));
	h = hue + (t * hueWithinShift);
	while (h > 255)
	{
		h -= 255;	
	}
	col = make_colour_hsv(h,255,255);
	
	draw_set_colour(col);
}
hue += dt * hueShift;
while (hue > 255)
{
	hue -= 255;	
}
draw_primitive_end();
if lerpTime > lerpStarting
	lerpStart += lerpIncrease * dt * endingBoost;
//lerpStart = min(lerpStart,1);
if lerpStart >= lerpStartingCircle
{
	lerpStart -= lerpIncrease * dt * 0.5
	draw_circle(targetX,targetY, (polygonWidth + lerpStart) * 2, false);
	event_user(0);
	if ls >= 1
	{
		instance_destroy();	
	}
}
draw_set_colour(c_white);