/// @description Radius
draw_set_alpha(opacity);
draw_circle_colour(x,y,radius,c_red,c_red,true);
draw_set_alpha(1);
instance_activate_object(Top);
instance_activate_object(TopSmall);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Wall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		instance_destroy(id,false);
		with instance_create(x,y,FloorExplo) {
			alarm[0] = 0;
			alarm[2] = 0;
		}
	}
}
with Debris
{
	instance_destroy();	
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Top,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		instance_destroy(id,false);
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,TopSmall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		instance_destroy(id,false);
	}
}
ds_list_destroy(newcollision);
if radius > 1000
{
	radius += 5;
	opacity -= 0.1;
	if opacity < 0
	{
		visible = false;
	}
}
else
{
	radius *= 1.08;
}