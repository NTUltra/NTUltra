if instance_exists(Player)
{
	x = Player.x;
	y = Player.y;
}
var newcollision = ds_list_create();
var al = instance_place_list(x,y,enemy,newcollision,false)//collision_circle_list(x,y,radius,enemy,false,false,newcollision,false);
for (var i = 0; i < al; i ++)
{
	with newcollision[| i] {
		if team != other.team && my_health > 0 && team != 0
		{
			if UberCont.normalGameSpeed == 60
				my_health -= other.dmg * 0.5;
			else
				my_health -= other.dmg;
			if sprite_index != spr_hurt
			{
				snd_play(snd_hurt, hurt_pitch_variation,true)
				sprite_index = spr_hurt
				image_index = 0
				motion_add(other.image_angle,6)
			}
		}
		instance_create(x,y,Smoke)
	}
}
ds_list_destroy(newcollision);
if UberCont.normalGameSpeed == 60
{
	scale += 0.025;
	if scale > 1
		opacity -= 0.05;
}
else
{
	scale += 0.05
	if scale > 1
		opacity -= 0.1;
}
/*
var col1 = make_colour_rgb(190,255,8);
var col2 = make_colour_rgb(72,253,8);
var col3 = make_colour_rgb(68,204,20);
draw_set_alpha(opacity);
draw_circle_colour(x,y,radius+1,col1,col1,true);
draw_circle_colour(x,y,radius,col1,col1,true);
draw_circle_colour(x,y,radius-1,col2,col2,true);
draw_circle_colour(x,y,radius-2,col2,col2,true);
draw_circle_colour(x,y,radius-7,col2,col2,true);
draw_circle_colour(x,y,radius-8,col2,col2,true);
draw_circle_colour(x,y,radius-9,col3,col3,true);
draw_circle_colour(x,y,radius-10,col3,col3,true);
draw_set_alpha(1);
*/
image_xscale = scale;
image_yscale = scale;
if opacity < 0
	instance_destroy();