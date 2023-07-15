/// @description xxx
var ys = image_yscale * flipped
if (alarm[0] > 0 || ammo <= 0)// && instance_exists(myHead)
{
	draw_sprite_ext(sprHead,myHead.image_index,
	x + lengthdir_x(1,image_angle - 90),
	y + lengthdir_y(1,image_angle - 90),
	image_yscale*0.5,ys*0.5,image_angle,c_black,1)
	draw_sprite_ext(sprHead,myHead.image_index,
	x + lengthdir_x(1,image_angle + 90),
	y + lengthdir_y(1,image_angle + 90),
	image_yscale*0.5,ys*0.5,image_angle,c_black,1)
	draw_sprite_ext(sprHead,myHead.image_index,x,y,image_yscale*0.5,ys*0.5,image_angle,c_white,1)
}
else
{
	draw_sprite_ext(sprOutline,image_index,
	x + lengthdir_x(1,image_angle - 90),
	y + lengthdir_y(1,image_angle - 90),
	image_xscale,ys,image_angle,c_black,1)
	draw_sprite_ext(sprOutline,image_index,
	x + lengthdir_x(1,image_angle + 90),
	y + lengthdir_y(1,image_angle + 90),
	image_xscale,ys,image_angle,c_black,1)
	draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,ys,image_angle,c_white,1)
}