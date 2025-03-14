/// @description Draw curve
BackCont.viewx2 = BackCont.viewx + lengthdir_x(image_yscale * 20,delayAngle+180)*UberCont.opt_shake
BackCont.viewy2 = BackCont.viewy + lengthdir_y(image_yscale * 20,delayAngle+180)*UberCont.opt_shake
var step = 8;
var pieces = image_xscale/step;
var xx = x;
var yy = y;
var aim = image_angle;
var growPart = pieces * 0.25;
var shrinkPart = pieces * 0.75;
var scale = waveScale;
var growScale = waveGrow;//0.075;
var piece = 0;
var particle = alarm[6] < 1
if particle
	alarm[6] = 5;
repeat(pieces)
{
	var aimDif = angle_difference(delayAngle,aim)/pieces
	var extraSpace = abs(aimDif) * 0.5;
	var nextAim = aim + aimDif;
	var nx = xx + lengthdir_x(step + 1 + extraSpace,aim);
	var ny = yy + lengthdir_y(step + 1 + extraSpace,aim);
	var nextx = xx + lengthdir_x(step + extraSpace,aim);
	var nexty = yy + lengthdir_y(step + extraSpace,aim);
	var yScale = scale;
	var nextScale = scale;
	if scale >= maxScale && growScale > 0
		growScale *= -1;
	else if scale <= minScale && growScale < 0
		growScale *= -1;
		
	nextScale += growScale
	nextScale = clamp(nextScale,minStartScale,maxScale);
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
	if particle && piece % 3 == 0
		with instance_create(xx + (random_range(12,-12) * yScale),yy + (random_range(12,-12) * yScale),PlutoFX)
		{
			sprite_index = sprVoidBulletTrail;
			image_index = irandom(image_number - 1);
			motion_add(aim + random_range(30,-30),3 + yScale);
		}
	piece += 1;
	scale = nextScale;
	aim = nextAim;
	xx = nextx;
	yy = nexty;
}
draw_sprite_ext(sprite_index,image_index,xx,yy,1,scale,aim,c_white,1);