/// @description Draw
draw_sprite_ext(
	sprite_index,
	image_index,
	xx,
	yy,
	max(1,point_distance(xx,yy,tx,ty)*0.15),
	clamp(lerpTime*3.5,0.5,3.5),
	image_angle,
	c_white,
	1
);