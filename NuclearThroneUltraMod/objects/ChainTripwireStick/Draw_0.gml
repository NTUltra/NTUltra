/// @description Draw lines
if instance_exists(ChainTripwireStick) && instance_number(ChainTripwireStick) > 1
{
	var xx = x + lengthdir_x(18,image_angle+180);
	var yy = y + lengthdir_y(18,image_angle+180);
	with ChainTripwireStick
	{
		if id != other.id && alarm[5] < 1
		{
			var xxx = x + lengthdir_x(18,image_angle+180);
			var yyy = y + lengthdir_y(18,image_angle+180);
			if collision_line(xx,yy,xxx,yyy,Wall,false,false) == noone
			{
				if alarm[1] > 15
					draw_line_width_color(xx,yy,xxx,yyy,2.5,c_white,c_white);
				else
					draw_line_width_color(xx,yy,xxx,yyy,2,c_red,c_red);
			}
		}
	}
}
draw_self();