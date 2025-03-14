/// @description Draw curve
//draw_self();
var step = 8;
var pieces = image_xscale/step;
var xx = x;
var yy = y;
var aim = point_direction(x,y,UberCont.mouse__x,UberCont.mouse__y);
var growPart = pieces * 0.25;
var shrinkPart = pieces * 0.75;
var minScale = 0.25;
var scale = minScale;
var maxScale = image_yscale + 0.5;
var growScale = 0.075;
var piece = 0;
repeat(pieces)
{
	var aimDif = angle_difference(image_angle,aim)/pieces
	var extraSpace = abs(aimDif) * 0.5;
	var nextAim = aim + aimDif;
	var nx = xx + lengthdir_x(step + 1 + extraSpace,aim);
	var ny = yy + lengthdir_y(step + 1 + extraSpace,aim);
	var nextx = xx + lengthdir_x(step + extraSpace,aim);
	var nexty = yy + lengthdir_y(step + extraSpace,aim);
	var yScale = scale;
	var nextScale = scale;
	if scale <= maxScale
		nextScale += growScale
	nextScale = clamp(nextScale,minScale,maxScale);
	//draw_sprite_ext(sprite_index,image_index,xx,yy,4,yScale,aim,c_white,1);
	var tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5),nextAim+90);
	var ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5),nextAim+90);
	var tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5),nextAim+90);
	var ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5),nextAim+90);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,c_white,c_white,c_white,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,c_white,c_white,c_white,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (3*nextScale),nextAim+90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (3*nextScale),nextAim+90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (3*yScale),nextAim+90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (3*yScale),nextAim+90);
	var outCol = make_colour_rgb(64,105,127);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (6*nextScale),nextAim+90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (6*nextScale),nextAim+90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (6*yScale),nextAim+90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (6*yScale),nextAim+90);
	outCol = make_colour_rgb(26,42,51);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (9*nextScale),nextAim+90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (9*nextScale),nextAim+90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (9*yScale),nextAim+90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (9*yScale),nextAim+90);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,c_black,c_black,c_black,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,c_black,c_black,c_black,false);
	
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5),nextAim-90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5),nextAim-90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5),nextAim-90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5),nextAim-90);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,c_white,c_white,c_white,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,c_white,c_white,c_white,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (3*nextScale),nextAim-90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (3*nextScale),nextAim-90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (3*yScale),nextAim-90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (3*yScale),nextAim-90);
	var outCol = make_colour_rgb(64,105,127);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (6*nextScale),nextAim-90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (6*nextScale),nextAim-90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (6*yScale),nextAim-90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (6*yScale),nextAim-90);
	outCol = make_colour_rgb(26,42,51);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,outCol,outCol,outCol,false);
	tx1 = nx + lengthdir_x((sprite_get_height(sprite_index)*nextScale*0.5) - (9*nextScale),nextAim-90);
	ty1 = ny + lengthdir_y((sprite_get_height(sprite_index)*nextScale*0.5) - (9*nextScale),nextAim-90);
	tx2 = xx + lengthdir_x((sprite_get_height(sprite_index)*yScale*0.5) - (9*yScale),nextAim-90);
	ty2 = yy + lengthdir_y((sprite_get_height(sprite_index)*yScale*0.5) - (9*yScale),nextAim-90);
	draw_triangle_colour(xx,yy,tx1,ty1,tx2,ty2,c_black,c_black,c_black,false);
	draw_triangle_colour(nx,ny,tx1,ty1,tx2,ty2,c_black,c_black,c_black,false);
	
	scale = nextScale;
	aim = nextAim;
	xx = nextx;
	yy = nexty;
}
draw_line(x,y,targetX,targetY);