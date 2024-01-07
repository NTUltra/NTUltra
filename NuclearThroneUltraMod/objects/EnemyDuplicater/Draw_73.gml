/// @description Radius
draw_set_alpha(opacity);
draw_circle_width_colour(x,y,radius,2,c_red);
draw_set_alpha(1);
var newcollision = ds_list_create();
var al = collision_circle_list(x,y,radius,enemy,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	if (ds_list_find_index(copiedEnemies, newcollision[| i]) == -1)
	{
		ds_list_add(copiedEnemies,newcollision[| i]);
		with newcollision[| i] {
			var splatDir = random(360);
			var rpt = 1+mySize;
			var angStep = 360 / rpt;
			repeat(rpt)
			{
				with instance_create(x,y,BloodStreak)
				{
				motion_add(splatDir,6 + other.mySize)
				image_angle = direction
				}
				scrAddToBGFXLayer(
					sprBloodSplat,
					irandom(sprite_get_number(sprBloodSplat)),
					x + lengthdir_x(random_range(4,8)+mySize,splatDir),
					y + lengthdir_y(random_range(4,8)+mySize,splatDir),
					random_range(0.8,1),
					random_range(0.8,1),
					splatDir,
					c_white,
					1
				);
				splatDir += angStep;
			}
			var newGuy = instance_create_depth(x,y,depth,object_index)
			ds_list_add(other.copiedEnemies,newGuy);
		}
	}
}
ds_list_destroy(newcollision);
if radius > 200
{
	radius += 5;
	opacity -= 0.1;
	if opacity < 0
		instance_destroy();
}
else
{
	radius *= 1.08;
}