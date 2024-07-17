/// @description Fuck up walls
//instance_create(x,y,WallBreak);
alarm[5] = 1;
image_xscale = 1.25;
image_yscale = 1.25;

var dis = ceil(point_distance(xprev,yprev,x,y)/16);
var dir = point_direction(xprev,yprev,x,y);
var xx = xprev;
var yy = yprev;
repeat(dis)
{
	var walls = ds_list_create();
	var al = instance_place_list(xx,yy,Wall,walls,false)
	for (var j = 0; j < al; j++) {
		with walls[| j]
		{
			instance_destroy(id,false);
			instance_create(x,y,FloorExplo);
		}
	}
	xx += lengthdir_x(16,dir);
	yy += lengthdir_y(16,dir);
	ds_list_destroy(walls);
}
image_xscale = 1;
image_yscale = 1;
xprev = x;
yprev = y;