/// @description Draw shields
var al = ds_list_size(myGuys);
for (var i = 0; i < al; i++)
{
	var myGuy = myGuys[| i];
	if myGuy != noone && instance_exists(myGuy)
	{
		var dir = point_direction(x,y,myGuy.x,myGuy.y) + 180;
		draw_line_width_colour(
		x,
		y,
		shieldX[| i] + lengthdir_x(shieldRadius[| i],dir),
		shieldY[| i] + lengthdir_y(shieldRadius[| i],dir),UberCont.opt_resolution_scale
		,lineCol,lineCol);
		draw_circle_width_colour(shieldX[| i],shieldY[| i],shieldRadius[| i],1,circleCol);
	}
}
draw_sprite_ext(sprite_index,image_index,x,y,image_xscale,image_yscale,0,c_white,1);
draw_circle_width_colour(x,y,range,1,circleCol);