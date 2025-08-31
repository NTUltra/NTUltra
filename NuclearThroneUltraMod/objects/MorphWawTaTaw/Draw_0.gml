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
var curve1 = quadratic_curve(ls,x,y,offsetX1,offsetY1,targetX,targetY);
var curve2 = quadratic_curve(ls,x,y,offsetX2,offsetY2,targetX,targetY);
var xx1 = curve1[0];
var yy1 = curve1[1];
var xx2 = curve2[0];
var yy2 = curve2[1];
var xPrev1 = xx1;
var yPrev1 = yy1;
var xPrev2 = xx2;
var yPrev2 = yy2;
var wt;
var polygonWidth = widthScale;
var col = colour
var h = hue;
draw_set_colour(col);
//draw_circle(xx1,yy1, max(1,polygonWidth - lerpStart), false);
draw_primitive_begin(pr_trianglestrip);
for (var t = ls; t <= lerpTime; t += curveDetail)
{
	xPrev1 = xx1;
	yPrev1 = yy1;
	xPrev2 = xx2;
	yPrev2 = yy2;
	curve1 = quadratic_curve(t,x,y,offsetX1,offsetY1,targetX,targetY);
	curve2 = quadratic_curve(t,x,y,offsetX2,offsetY2,targetX,targetY);
	draw_vertex(xPrev1, yPrev1);
	draw_vertex(xPrev2, yPrev2);
	draw_vertex(xx1, yy1);
	draw_vertex(xx1, yy1);
	draw_vertex(xPrev1, yPrev1);
	draw_vertex(xx2, yy2);
	xx1 = curve1[0];
	yy1 = curve1[1];
	xx2 = curve2[0];
	yy2 = curve2[1];
	h = hue - (t * hueWithinShift);
	while (h < 0)
	{
		h += 255;	
	}
	col = make_colour_hsv(h,255,255);
	
	draw_set_colour(col);
}
draw_primitive_end();
//draw_circle(xx1,xx2,2,false);
hue += dt * hueShift;
while (hue > 255)
{
	hue -= 255;	
}
if ending > 1
	lerpStart += lerpIncrease * dt * endingBoost;
//lerpStart = min(lerpStart,1);
if lerpStart >= lerpStartingCircle
{
	lerpStart -= lerpIncrease * dt * 0.5
	//draw_circle(targetX,targetY, (polygonWidth + lerpStart) * 2, false);
	event_user(0);
	if ls >= 1
	{
		instance_destroy();	
	}
}
draw_set_colour(c_white);
draw_sprite_ext(mask_index,image_index,x,y,image_xscale,image_yscale,image_angle,c_white,0.4);