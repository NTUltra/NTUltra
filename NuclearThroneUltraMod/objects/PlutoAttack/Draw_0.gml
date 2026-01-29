/// @description Draw curve
if myTarget != noone && instance_exists(myTarget)
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
var tx1 = lerp(xstart,offsetX,ls);
var tx2 = lerp(offsetX,targetX,ls);
var ty1 = lerp(ystart,offsetY,ls);
var ty2 = lerp(offsetY,targetY,ls);
var xx = lerp(tx1,tx2,ls);
var yy = lerp(ty1,ty2,ls);
var xPrev = xx;
var yPrev = yy;
var wt;
var polygonWidth;
draw_set_colour(c_lime);
//draw_circle(xx,yy,polygonWidth, false);
//draw_vertex(xx,yy);
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
	tx1 = lerp(xstart,offsetX,t);
	tx2 = lerp(offsetX,targetX,t);
	ty1 = lerp(ystart,offsetY,t);
	ty2 = lerp(offsetY,targetY,t);
	xx = lerp(tx1,tx2,t);
	yy = lerp(ty1,ty2,t);
	var dir = point_direction(xPrev,yPrev,xx,yy);
	draw_vertex(xPrev + lengthdir_x(polygonWidth,dir + 90), yPrev + lengthdir_y(polygonWidth,dir + 90));
	draw_vertex(xPrev + lengthdir_x(polygonWidth,dir - 90), yPrev + lengthdir_y(polygonWidth,dir - 90));
	draw_vertex(xx + lengthdir_x(polygonWidth,dir + 90), yy + lengthdir_y(polygonWidth,dir + 90));
	draw_vertex(xx + lengthdir_x(polygonWidth,dir - 90), yy + lengthdir_y(polygonWidth,dir - 90));
}
draw_primitive_end();
if lerpTime > lerpStarting
	lerpStart += lerpIncrease * dt;
lerpStart = min(lerpStart,1);
if lerpStart >= lerpStartingCircle || dealtDamage
{
	draw_circle(targetX,targetY, (polygonWidth + lerpStart) * 2, false);
	event_user(0);
	if ls >= 1
	{
		instance_destroy();	
	}
	lerpStart -= lerpIncrease * dt * 0.5
}
draw_set_colour(c_white);