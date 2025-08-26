/// @description Radius
alarm[0] = 1;
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Wall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i]
	{
		image_blend = other.invertAcidColour;
		colour = image_blend = other.invertAcidColour;;
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Floor,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		image_blend = other.invertAcidColour;
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,Top,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		image_blend = other.invertAcidColour;
	}
}
ds_list_destroy(newcollision);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,TopSmall,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		image_blend = other.invertAcidColour;
	}
}
ds_list_destroy(newcollision);
radius += 10;
if radius >  maxRadius
{
	instance_destroy();
}